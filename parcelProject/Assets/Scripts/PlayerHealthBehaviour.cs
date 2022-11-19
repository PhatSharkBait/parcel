using UnityEngine;
using UnityEngine.UI;
using unityTools;

public class PlayerHealthBehaviour : MonoBehaviour {
    public IntDataSO playerHealthObj, playerMaxHealth;
    public Slider slider;

    private void Awake() {
        playerHealthObj.value = playerMaxHealth.value;
    }

    public void UpdateSliderValue() {
        float currentHealth = playerHealthObj.value;
        float maxHealth = playerMaxHealth.value;
        slider.value = currentHealth / maxHealth;
    }
}
