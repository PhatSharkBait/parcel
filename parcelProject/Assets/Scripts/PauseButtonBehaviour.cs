using UnityEngine;
using UnityEngine.Events;
using unityTools;

public class PauseButtonBehaviour : MonoBehaviour {
    public GameAction pauseAction, playAction;
    public UnityEvent pauseEvent, playEvent;
        
    private bool _isPaused = false;

    public void PlayPauseToggle() {
        if (_isPaused) {
            PlayAction();
            _isPaused = false;
        }
        else {
            PauseAction();
            _isPaused = true;
        }
    }

    private void PauseAction() {
        pauseAction.RaiseAction();
        pauseEvent.Invoke();
    }

    private void PlayAction() {
        playAction.RaiseAction();
        playEvent.Invoke();
    }

    public void PlayAfterUpgradeSelected() {
        PlayAction();
    }
}
