using System.Collections;
using UnityEngine;
using unityTools;

public class ProjectileBehaviour : MonoBehaviour {
    public ProjectileSO projectileType;
    public GameObject target;
    public MeshRenderer meshRenderer, meshRenderer2;
    public Vector3DataSO playerPositionData;
    public FloatDataSO _upgradeMult;

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
        meshRenderer2.enabled = true;
        _boxCollider.enabled = true;
        SetCanRun(true);
        StartCoroutine(MoveTowardTarget());
    }

    public void SetCanRun(bool value) {
        canRun = value;
    }

    private void SetTarget(GameObject newTarget) {
        target = newTarget;
    }

    private IEnumerator MoveTowardTarget() {
        var alpha = 0f;
        var lerpSpeed = projectileType.speed * .01f * _upgradeMult.value;
        var projectileStartPos = transform.position;
        while (canRun) {
            gameObject.transform.position = Vector3.Lerp(projectileStartPos, target.transform.position, alpha);
            alpha += lerpSpeed;
            yield return _waitForFixedUpdate;
        }
    }
}
