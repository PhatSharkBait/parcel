using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu]
public class EnemyPoolList : ScriptableObject {
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
