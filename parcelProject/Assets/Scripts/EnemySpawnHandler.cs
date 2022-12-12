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
    private const float SpawnDelay = .1f;
    private WaitForSeconds _spawnWaitForSeconds;
    private int _currentWave = 0;
    private int _easierEnemyAmount, _easyEnemyAmount, _hardEnemyAmount, _harderEnemyAmount;
    private List<int> _waveAmounts = new();

    private void Awake() {
        _spawnWaitForSeconds = new WaitForSeconds(SpawnDelay);
        _waveAmounts.Add(0);
        _waveAmounts.Add(0);
        _waveAmounts.Add(0);
        _waveAmounts.Add(0);
        SpawnEnemyPools();
    }

    private bool PoolFull(EnemyPool enemyPool) {
        return enemyPool.poolLength >= enemyPool.maxLength;
    }

    private void SpawnEnemyPools() {
        foreach (EnemySO enemyType in enemyTypes) {
            var newPool = new GameObject().AddComponent<EnemyPool>();
            enemyPoolList.AddPool(newPool);
            newPool.enemyType = enemyType;
            newPool.maxLength = 0;
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

    public void IncreaseDifficulty() {
        _waveAmounts[0] = _easierEnemyAmount;
        _waveAmounts[1] = _easyEnemyAmount;
        _waveAmounts[2] = _hardEnemyAmount;
        _waveAmounts[3] = _harderEnemyAmount;
        for (int i = 0; i < _waveAmounts.Count; i++) {
            enemyPoolList.pools[i].maxLength += (int)math.ceil(_waveAmounts[i] / 3f);
            StartCoroutine(InstanceWaves(enemyPoolList.pools[i]));
        }
    }

    public void NextWave() {
        switch (_currentWave) {
            case 0:
                _easierEnemyAmount = 10;
                _easyEnemyAmount = 5;
                _hardEnemyAmount = 0;
                _harderEnemyAmount = 0;
                break;
            case 1:
                _easierEnemyAmount = 15;
                _easyEnemyAmount = 10;
                _hardEnemyAmount = 5;
                _harderEnemyAmount = 0;
                break;
            case 2:
                _easierEnemyAmount = 10;
                _easyEnemyAmount = 10;
                _hardEnemyAmount = 10;
                _harderEnemyAmount = 2;
                break;
            case 3:
                _easierEnemyAmount = 10;
                _easyEnemyAmount = 15;
                _hardEnemyAmount = 15;
                _harderEnemyAmount = 10;
                break;
            case 4:
                _easierEnemyAmount = 0;
                _easyEnemyAmount = 20;
                _hardEnemyAmount = 20;
                _harderEnemyAmount = 20;
                break;
        }

        IncreaseDifficulty();
        _currentWave++;
    }
}
