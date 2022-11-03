using System.Collections;
using UnityEngine;
using unityTools;

public class ProjectileBehaviour : MonoBehaviour {
    public ProjectileSO projectileType;
    public GameObject target;
    public MeshRenderer meshRenderer;
    public Vector3DataSO playerPositionData;

    private BoxCollider _boxCollider;

    public bool canRun;

    private WaitForFixedUpdate _waitForFixedUpdate;

    private void Awake() {
        _waitForFixedUpdate = new WaitForFixedUpdate();
        _boxCollider = gameObject.GetComponent<BoxCollider>();
    }

    public void StartFollowEnemyCoroutine(GameObject newTarget) {
        SetTarget(newTarget);
        transform.position = new Vector3(playerPositionData.value.x, 1f, playerPositionData.value.z);
        meshRenderer.enabled = true;
        _boxCollider.enabled = true;
        SetCanRun(true);
        StartCoroutine(FollowEnemy());
    }

    public void SetCanRun(bool value) {
        canRun = value;
    }

    private void SetTarget(GameObject newTarget) {
        target = newTarget;
    }

    private IEnumerator FollowEnemy() {
        var alpha = 0f;
        var lerpSpeed = projectileType.speed * .01f;
        var projectileStartPos = transform.position;
        while (canRun) {
            gameObject.transform.position = Vector3.Lerp(projectileStartPos, target.transform.position, alpha);
            alpha += lerpSpeed;
            yield return _waitForFixedUpdate;
        }
    }
}
