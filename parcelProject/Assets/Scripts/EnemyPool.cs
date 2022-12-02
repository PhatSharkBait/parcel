using System.Collections.Generic;
using UnityEngine;

public class EnemyPool : MonoBehaviour {
    public EnemySO enemyType;
    public List<GameObject> pool = new();
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

    public void SetEnemyType(EnemySO newEnemyType) {
        enemyType = newEnemyType;
    }
}