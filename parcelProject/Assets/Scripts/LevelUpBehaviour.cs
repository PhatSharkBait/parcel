using UnityEngine;
using UnityEngine.Events;
using unityTools;

public class LevelUpBehaviour : MonoBehaviour {
    public IntDataSO currentExp, expToLevel, expBaseline;
    public UnityEvent levelUpEvent;

    public void LevelUpCheck() {
        if (currentExp.value >= expToLevel.value) {
            LevelUp();
        }
    }

    private void LevelUp() {
        expBaseline.value = expToLevel.value;
        levelUpEvent.Invoke();
    }
}
