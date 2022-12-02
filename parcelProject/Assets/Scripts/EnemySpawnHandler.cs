using System.Collections;
using System.Collections.Generic;
using Unity.Mathematics;
using UnityEngine;
using UnityEngine.Events;
using unityTools;

public class EnemySpawnHandler : MonoBehaviour {
    //public EnemyPoolSO EnemyPoolSo;
    public PoolList enemyPoolList;
    public GameObject enemyPrefab;
    public Vector3DataSO playerLocationSO;
    public UnityEvent startSpawningEvent, stopSpawningEvent;
    public List<EnemySO> enemyTypes;

    private readonly Vector3 _spawnOffset = new Vector3(50, 0, 0);
    private List<EnemyPoolSO> _wavePool;
    private const float SpawnDelay = .25f;
    private WaitForSeconds _spawnWaitForSeconds;

    private void Awake() {
        _spawnWaitForSeconds = new WaitForSeconds(SpawnDelay);
    }

    private bool PoolFull(EnemyPool enemyPool) {
        return enemyPool.poolLength >= enemyPool.maxLength;
    }
    public void SpawnRed() {
        SpawnWave(enemyTypes[0], 10);
    }
    public void SpawnGreen() {
        SpawnWave(enemyTypes[1], 10);
    }
    
    // public void InstantiateEnemyToPool(EnemyPoolSO enemyPoolSo) {
    //     if (!PoolFull(enemyPoolSo)) {
    //         enemyPoolSo.AddEnemyToPool(Instantiate(enemyPrefab, (playerLocationSO.value + _spawnOffset), quaternion.identity));
    //     }
    //     else {
    //         StopSpawning();
    //     }
    // }

    private IEnumerator InstanceWaves(EnemyPool enemyPool) {
        while (!PoolFull(enemyPool)) {
            GameObject newEnemy = Instantiate(enemyPrefab, (playerLocationSO.value + _spawnOffset), quaternion.identity);
            var newEnemyTypeBehaviour = newEnemy.GetComponent<EnemyTypeBehaviour>();
            newEnemyTypeBehaviour.enemyPool = enemyPool;
            enemyPool.AddEnemyToPool(newEnemy);
            yield return _spawnWaitForSeconds;
        }
    }

    private void SpawnWave(EnemySO enemyType, int amountInWave) {
        var newWave = new GameObject().AddComponent<EnemyPool>();
        enemyPoolList.AddPool(newWave);
        newWave.enemyType = enemyType;
        newWave.maxLength = amountInWave;
        StartCoroutine(InstanceWaves(newWave));
    }

    // public void StartSpawning() {
    //     startSpawningEvent.Invoke();
    // }
    //
    // private void StopSpawning() {
    //     stopSpawningEvent.Invoke();
    // }
}
