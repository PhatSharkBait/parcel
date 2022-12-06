using UnityEngine;
using UnityEngine.UI;
using unityTools;

public class PlayerHealthBehaviour : MonoBehaviour {
    public IntDataSO playerHealthObj, playerMaxHealth;
    public Slider slider;
    public GameAction gameOverAction;

    private void Awake() {
        playerHealthObj.value = playerMaxHealth.value;
    }

    public void CheckHealth() {
        UpdateSliderValue();
        if (playerHealthObj.value <= 0) {
            gameOverAction.RaiseAction();
            print("you died");
        }
    }

    public void UpdateSliderValue() {
        float currentHealth = playerHealthObj.value;
        float maxHealth = playerMaxHealth.value;
        slider.value = currentHealth / maxHealth;
    }
}
