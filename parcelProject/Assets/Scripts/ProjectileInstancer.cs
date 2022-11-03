using Unity.Mathematics;
using UnityEngine.Events;
using UnityEngine;
public class ProjectileInstancer : MonoBehaviour {
    public ProjectilePoolSO projectilePoolSo;
    public GameObject projectilePrefab;
    public UnityEvent startSpawningEvent, stopSpawningEvent;

    private bool PoolFull() {
        return projectilePoolSo.poolLength >= projectilePoolSo.maxLength;
    }
    
    public void InstantiateEnemyToPool() {
        if (!PoolFull()) {
            projectilePoolSo.AddProjectileToPool(Instantiate(projectilePrefab, Vector3.zero, quaternion.identity));
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