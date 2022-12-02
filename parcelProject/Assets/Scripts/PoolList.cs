using UnityEngine;
using System.Collections.Generic;
public class PoolList : MonoBehaviour {
    public List<EnemyPool> pools = new();

    public void AddPool(EnemyPool pool) {
        pools.Add(pool);
    }

    public void RemovePool(EnemyPool pool) {
        pools.Remove(pool);
    }

    public void CleanPool() {
        pools.Clear();
    }
}