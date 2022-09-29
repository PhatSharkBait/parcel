using System;
using UnityEngine;

[RequireComponent(typeof(MeshRenderer))]
public class EnemyTypeBehaviour : MonoBehaviour {
    public EnemySO enemySO;
    public EnemyPoolSO enemyPoolSO;
    //public UnityEvent swapEnemy;

    private MeshRenderer _meshRenderer;

    private void Awake() {
        _meshRenderer = GetComponent<MeshRenderer>();
    }

    private void Start() {
        SwapEnemy();
    }

    public void CheckEnemyType() {
        if (enemyPoolSO.enemyType is not null && enemyPoolSO.enemyType != enemySO) {
            SwapEnemy();
        }
    }

    private void SwapEnemy() {
        enemySO = enemyPoolSO.enemyType;
        _meshRenderer.material = enemySO.material;
    }
}
