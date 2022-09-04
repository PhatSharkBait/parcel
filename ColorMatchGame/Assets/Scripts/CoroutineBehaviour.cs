using System.Collections;
using UnityEngine;
using UnityEngine.Events;

public class CoroutineBehaviour : MonoBehaviour {
    public float delayTime, countDownTime = 1.0f;
    public IntDataSO counterDown;
    public UnityEvent delayEvent, beginRepeatEvent, repeatEvent, endRepeatEvent;

    private WaitForSeconds _waitForSecondsDelay;
    private WaitForSeconds _waitForSecondsCountDown;

    private void Awake() {
        _waitForSecondsDelay = new WaitForSeconds(delayTime);
        _waitForSecondsCountDown = new WaitForSeconds(countDownTime);
    }

    private IEnumerator AfterDelayEvent() {
        yield return _waitForSecondsDelay;
        delayEvent.Invoke();
    }
    
    private IEnumerator BeginCountdown() {
        beginRepeatEvent.Invoke();
        while (counterDown.value > 0) {
            repeatEvent.Invoke();
            counterDown.value --;
            yield return _waitForSecondsCountDown;
        }
        endRepeatEvent.Invoke();
    }
    
    public void BeginDelayCoroutine() {
        StartCoroutine(AfterDelayEvent());
    }

    public void BeginCountDownCoroutine() {
        StartCoroutine(BeginCountdown());
    }

}
