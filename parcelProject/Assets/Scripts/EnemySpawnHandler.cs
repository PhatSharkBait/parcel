using System.Collections;
using System.Collections.Generic;
using Unity.Mathematics;
using UnityEngine;
using unityTools;

public class EnemySpawnHandler : MonoBehaviour {
    public PoolList enemyPoolList;
    public GameObject enemyPrefab;
    public Vector3DataSO playerLocationSO;
    public List<EnemySO> enemyTypes;

    private readonly Vector3 _spawnOffset = new Vector3(50, 0, 0);
    private const float SpawnDelay = .5f;
    private WaitForSeconds _spawnWaitForSeconds;

    private void Awake() {
        _spawnWaitForSeconds = new WaitForSeconds(SpawnDelay);
    }

    private bool PoolFull(EnemyPool enemyPool) {
        return enemyPool.poolLength >= enemyPool.maxLength;
    }

    private void Start() {
        SpawnEnemyPools();
    }

    private void SpawnEnemyPools() {
        foreach (EnemySO enemyType in enemyTypes) {
            var newWave = new GameObject().AddComponent<EnemyPool>();
            enemyPoolList.AddPool(newWave);
            newWave.enemyType = enemyType;
            newWave.maxLength = 0;
        }
    }

    private IEnumerator InstanceWaves(EnemyPool enemyPool) {
        while (!PoolFull(enemyPool)) {
            GameObject newEnemy = Instantiate(enemyPrefab, (playerLocationSO.value + _spawnOffset), quaternion.identity);
            var newEnemyTypeBehaviour = newEnemy.GetComponent<EnemyTypeBehaviour>();
            newEnemyTypeBehaviour.enemyPool = enemyPool;
            enemyPool.AddEnemyToPool(newEnemy);
            yield return _spawnWaitForSeconds;
        }
    }
}
