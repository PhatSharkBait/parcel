using UnityEngine;
using UnityEngine.Events;
using unityTools;
using System.Collections;
using UnityEngine.AI;

[RequireComponent(typeof(MeshRenderer))]
[RequireComponent(typeof(Rigidbody))]
public class EnemyTypeBehaviour : MonoBehaviour {
    public EnemyPool enemyPool;
    public Vector3DataSO playerLocationSO;
    public int maxDistanceFromPlayer = 5;
    public UnityEvent outOfRangeEvent, killEvent;//, swapEnemy;
    public GameAction dealDamage;
    public Object prefab;

    private EnemySO enemySO;
    private NavMeshAgent _navMeshAgent;
    private MeshRenderer _meshRenderer;
    private Rigidbody _rigidbody;
    private WaitForSeconds _waitForSeconds, _tickSeconds;
    private float _speed;
    private int _damage, _health, _expValue;
    public bool CanDealTickDamage { get; set; }
    public bool CanMove { get; set; }

    private void Awake() {
        _navMeshAgent = GetComponent<NavMeshAgent>();
        _meshRenderer = GetComponent<MeshRenderer>();
        _rigidbody = GetComponent<Rigidbody>();
        _waitForSeconds = new WaitForSeconds(.5f);
        _tickSeconds = new WaitForSeconds(.25f);
    }
    
    private void Start() { 
        SwapEnemy();
        StartCheckDistanceCoroutine();
        CanMove = true;
    }

    public void CheckEnemyType() {
        if (enemyPool.enemyType is not null && enemyPool.enemyType != enemySO) {
            SwapEnemy();
        }
    }

    private void SwapEnemy() {
        enemySO = enemyPool.enemyType;
        _meshRenderer.material = enemySO.material;
        _damage = enemySO.damage;
        _speed = enemySO.moveSpeed;
        _expValue = enemySO.expValue;
        _health = enemySO.health;
    }
    
    public void StartCheckDistanceCoroutine() {
       StartCoroutine(CheckDistance());
    }

    private IEnumerator CheckDistance() {
        while (InRange()) {
            yield return _waitForSeconds;
        }
        OutOfRange();
    }

    private bool InRange() {
        return maxDistanceFromPlayer > (playerLocationSO.value - transform.position).magnitude;
    }

    private void OutOfRange() {
        outOfRangeEvent.Invoke();
    }

    private void Update() {
        if (!CanMove) return;
        _rigidbody.velocity = Vector3.zero;
        var currentPos = transform.position;
        Vector3 moveDir = (playerLocationSO.value - currentPos).normalized * (_speed * Time.deltaTime);
        _navMeshAgent.Move(moveDir);
    }

    private void DealDamage(IntDataSO healthObj) {
        healthObj.value -= _damage;
        dealDamage.RaiseAction();
    }

    private IEnumerator DamageTick(IntDataSO healthObj) {
        do {
            DealDamage(healthObj);
            yield return _tickSeconds;
        } while (CanDealTickDamage);
    }

    public void StartDamageTick(IntDataSO healthObj) {
        CanDealTickDamage = true;
        StartCoroutine(DamageTick(healthObj));
    }
    public void StopDamageTick() {
        CanDealTickDamage = false;
    }

    public void DealDamageToEnemy(int damageToDeal) {
        _health -= damageToDeal;
        if (_health <= 0) {
            Kill();
        }
    }
    private void Kill() {
        DropExp();
        killEvent.Invoke();
        _health = enemySO.health;
    }

    private void DropExp() {
        var expInstance = Instantiate(prefab, gameObject.transform.position, Quaternion.identity) as GameObject;
        if (expInstance == null) return;
        var expInstanceBehaviour = expInstance.GetComponent<ExpBehaviour>();
        expInstanceBehaviour.SetExpValue(_expValue);
    }
}
