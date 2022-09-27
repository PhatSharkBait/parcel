using System.Collections;
using UnityEngine;
using UnityEngine.Events;
using unityTools;

public class InRangeEventBehaviour : MonoBehaviour {
    public Vector3DataSO otherObj;
    public WaitForSecondsSO waitForSecondsSO;
    public UnityEvent enterRangeEvent, exitRangeEvent;

    private WaitForSeconds _waitForSeconds;
    private bool canRun = true;

    private void Awake() {
        _waitForSeconds = waitForSecondsSO.waitForSeconds;
        StartCoroutine(CheckInterval());
    }

    private IEnumerator CheckInterval() {
        while (canRun) {
            Debug.Log("Gonna see this fool");
            yield return _waitForSeconds; 
        }
    }
}
