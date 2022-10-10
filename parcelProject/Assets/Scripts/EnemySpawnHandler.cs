using Unity.Mathematics;
using UnityEngine;
using UnityEngine.Events;
using unityTools;

public class EnemySpawnHandler : MonoBehaviour {
    public EnemyPoolSO EnemyPoolSo;
    public GameObject enemyPrefab;
    public Vector3DataSO playerLocationSO;
    public UnityEvent startSpawningEvent, stopSpawningEvent;
    
    private readonly Vector3 _spawnOffset = new Vector3(50, 0, 0);

    private bool PoolFull() {
        return EnemyPoolSo.poolLength >= EnemyPoolSo.maxLength;
    }
    
    public void InstantiateEnemyToPool() {
        if (!PoolFull()) {
            EnemyPoolSo.AddEnemyToPool(Instantiate(enemyPrefab, (playerLocationSO.value + _spawnOffset), quaternion.identity));
        }
        else {
            StopSpawning();
        }
    }

    public void StartSpawning() {
        startSpawningEvent.Invoke();
    }

    private void StopSpawning() {
        stopSpawningEvent.Invoke();
    }
}
