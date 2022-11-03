using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(fileName = "ProjectilePoolSO", menuName = "Projectile Pool", order = 0)] 
public class ProjectilePoolSO : ScriptableObject {
    public ProjectileSO projectileType;
    public List<GameObject> pool;
    public int poolLength, maxLength;
    
    private void AdjustPoolLength() {
        poolLength = pool.Count;
    }

    public void AddProjectileToPool(GameObject obj) {
        pool.Add(obj);
        AdjustPoolLength();
    }

    public void RemoveProjectileFromPool(GameObject obj) {
        pool.Remove(obj);
        AdjustPoolLength();
    }

    public void CleanPool() {
        pool.Clear();
        AdjustPoolLength();
    }

    public void CyclePool() {
        var nextItem = pool[0];
        pool.Remove(nextItem);
        pool.Add(nextItem);
    }

    public void SetProjectileType(ProjectileSO projectileSo) {
        projectileType = projectileSo;
    }
}