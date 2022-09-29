using System.Collections;
using UnityEngine;
using UnityEngine.Events;
using unityTools;

public class EnemyRespawnBehaviour : MonoBehaviour {
    public Vector3DataSO playerLocationSO;
    public int maxDistanceFromPlayer = 5;
    public UnityEvent outOfRangeEvent;

    private WaitForSeconds _waitForSeconds;

    private void Awake() {
        _waitForSeconds = new WaitForSeconds(.5f);
    }

    private void Start() {
        StartCheckDistanceCoroutine();
    }

    public void StartCheckDistanceCoroutine() {
        StartCoroutine(CheckDistance());
    }

    private IEnumerator CheckDistance() {
        while (InRange()) {
            yield return _waitForSeconds;
        }
        OutOfRange();
    }

    private bool InRange() {
        return maxDistanceFromPlayer > (playerLocationSO.value - transform.position).magnitude;
    }

    private void OutOfRange() {
        outOfRangeEvent.Invoke();
    }
}
