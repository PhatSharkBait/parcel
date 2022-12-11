using UnityEngine;
using UnityEngine.Events;

public class EndUIBehaviour : MonoBehaviour {
    public GameTimer gameTimer;
    public UnityEvent gameOverEvent, winEvent;

    public void CheckTime() {
        if (gameTimer.TimerFinished) {
            winEvent.Invoke();
        }
        else {
            gameOverEvent.Invoke();
        }
    }
}
