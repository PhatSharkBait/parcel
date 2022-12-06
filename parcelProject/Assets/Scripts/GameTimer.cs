using System.Collections;
using UnityEngine;
using unityTools;

public class GameTimer : MonoBehaviour {
    public bool canRun;
    public FloatDataSO amountInMinutes;
    public TimerBehaviour timerBehaviour;
    
    private WaitForSeconds _waitForSeconds;
    private int _targetSeconds, _currentSecond;

    private void Awake() {
        _waitForSeconds = new WaitForSeconds(1f);
        _targetSeconds = (int)(amountInMinutes.value * 60);
    }

    private void Start() {
        StartCoroutine(StartTimer());
    }

    private IEnumerator StartTimer() {
        while (_currentSecond < _targetSeconds) {
            if (!canRun) break;
            yield return _waitForSeconds;
            _currentSecond++;
            timerBehaviour.UpdateTimer(_currentSecond);
        }
    }
}
