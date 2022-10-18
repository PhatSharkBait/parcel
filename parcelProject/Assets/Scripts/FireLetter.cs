using UnityEngine;
using unityTools;
public class FireLetter : MonoBehaviour {
    public GameObject letterProjectile;
    public EnemyPoolSO enemyPoolSo;
    public Vector3DataSO playerLocation;

    private GameObject FindClosestEnemy() {
        Vector3 playerLocationPos = playerLocation.value;
        var closestEnemyDistance = 100f;
        GameObject closestEnemy = null;
        foreach (GameObject enemy in enemyPoolSo.pool) {
            float currentEnemyDistance = Vector3.Distance(enemy.transform.position, playerLocationPos);
            if (!(currentEnemyDistance < closestEnemyDistance)) continue;
            closestEnemyDistance = currentEnemyDistance;
            closestEnemy = enemy;
        }

        return closestEnemy;
    }

    public void FireProjectile() {
        
    }
}
