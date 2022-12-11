using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;
using unityTools;

public class PlayerHealthBehaviour : MonoBehaviour {
    public IntDataSO playerHealthObj, playerMaxHealth;
    public Slider slider;
    public GameAction gameOverAction;
    public UnityEvent endGameEvent;

    private void Awake() {
        playerHealthObj.value = playerMaxHealth.value;
    }

    public void CheckHealth() {
        UpdateSliderValue();
        if (playerHealthObj.value > 0) return;
        gameOverAction.RaiseAction();
        endGameEvent.Invoke();
    }

    public void UpdateSliderValue() {
        float currentHealth = playerHealthObj.value;
        float maxHealth = playerMaxHealth.value;
        slider.value = currentHealth / maxHealth;
    }
}
