using System;
using UnityEngine;
using UnityEngine.Events;
using unityTools;
using System.Collections;
using UnityEditor;

[RequireComponent(typeof(MeshRenderer))]
[RequireComponent(typeof(Rigidbody))]
public class EnemyTypeBehaviour : MonoBehaviour {
    public EnemySO enemySO;
    public EnemyPoolSO enemyPoolSO;
    public Vector3DataSO playerLocationSO;
    public int maxDistanceFromPlayer = 5;
    public UnityEvent outOfRangeEvent;//, swapEnemy;

    private MeshRenderer _meshRenderer;
    private Rigidbody _rigidbody;
    private WaitForSeconds _waitForSeconds, _tickSeconds;
    private float _speed;
    private int _damage;
    public bool CanDealTickDamage { get; set; }

    private void Awake() {
        _meshRenderer = GetComponent<MeshRenderer>();
        _rigidbody = GetComponent<Rigidbody>();
        _waitForSeconds = new WaitForSeconds(.5f);
        _tickSeconds = new WaitForSeconds(.5f);
    }

    private void Start() {
        StartCheckDistanceCoroutine();
        SwapEnemy();
    }

    public void CheckEnemyType() {
        if (enemyPoolSO.enemyType is not null && enemyPoolSO.enemyType != enemySO) {
            SwapEnemy();
        }
    }

    private void SwapEnemy() {
        enemySO = enemyPoolSO.enemyType;
        _meshRenderer.material = enemySO.material;
        _damage = enemySO.damage;
        _speed = enemySO.moveSpeed;
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
        Vector3 moveDir = (playerLocationSO.value - transform.position).normalized * (_speed * Time.deltaTime);
        transform.Translate(moveDir);
    }

    private void DealDamage(IntDataSO healthObj) {
        healthObj.value -= _damage;
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
}
