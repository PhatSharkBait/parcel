using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using unityTools;
public class FireLetter : MonoBehaviour {
    public ProjectilePoolSO projectilePool;
    public PoolList enemyPoolList;
    public Vector3DataSO playerLocation;
    public IntDataSO projectileAmount;

    private List<GameObject> FindClosestEnemy() {
        int targetAmount = projectileAmount.value;
        if (enemyPoolList.pools.Count == 0) return null;
        List<GameObject> enemyList = enemyPoolList.pools.SelectMany(pool => pool.pool).ToList();
        var closestEnemyList = new List<GameObject>();
        Vector3 playerLocationPos = playerLocation.value;

        if (enemyList.Count < targetAmount) targetAmount = enemyList.Count;
        for (int i = 0; i < targetAmount; i++) {
            var closestEnemyDistance = 100f;
            GameObject closestEnemy = null;
            foreach (GameObject enemy in enemyList) { 
                float currentEnemyDistance = Vector3.Distance(enemy.transform.position, playerLocationPos);
                if (!(currentEnemyDistance < closestEnemyDistance)) continue;
                closestEnemyDistance = currentEnemyDistance;
                closestEnemy = enemy;
            } 
            closestEnemyList.Add(closestEnemy);
            enemyList.Remove(closestEnemy);
        }
        return closestEnemyList;
    }

    public void FireProjectile() {
        List<GameObject> targets = FindClosestEnemy();
        if (targets == null || targets.Count == 0) return;
        foreach (GameObject target in targets) {
            var projectile = projectilePool.pool[0].GetComponent<ProjectileBehaviour>();
            projectile.StartFollowEnemyCoroutine(target);
            projectilePool.CyclePool();
        }
    }
}
