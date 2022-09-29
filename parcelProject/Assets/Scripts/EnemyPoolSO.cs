using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu]
public class EnemyPoolSO : ScriptableObject {
    public EnemySO enemyType;
    public List<GameObject> pool;
    public int poolLength, maxLength;
    
    private void AdjustPoolLength() {
        poolLength = pool.Count;
    }

    public void AddEnemyToPool(GameObject obj) {
        pool.Add(obj);
        AdjustPoolLength();
    }

    public void RemoveEnemyFromPool(GameObject obj) {
        pool.Remove(obj);
        AdjustPoolLength();
    }

    public void CleanPool() {
        pool.Clear();
        AdjustPoolLength();
    }

    public void SetEnemySO(EnemySO enemySO) {
        enemyType = enemySO;
    }
}
