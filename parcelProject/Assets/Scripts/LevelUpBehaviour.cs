using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;
using unityTools;

public class LevelUpBehaviour : MonoBehaviour {
    public IntDataSO currentExp, expToLevel, expBaseline, currentLevel, letterAmount, letterDamage;
    public FloatDataSO letterSpeed, characterSpeed;
    public UnityEvent levelUpEvent;
    public Button projectileAmountButton, projectileSpeedButton, projectileDamageButton, characterSpeedButton;
    public ExpSlider slider;

    private int _projectileAmountLevel, _projectileSpeedLevel, _projectileDamageLevel, _characterSpeedLevel;
    private int _maxLevel = 3;

    private void Start() {
        _projectileAmountLevel = 0;
        _projectileSpeedLevel = 0;
        _characterSpeedLevel = 0;
    }

    public void LevelUpCheck() {
        if (_projectileAmountLevel >= _maxLevel
            && _projectileSpeedLevel >= _maxLevel
            && _characterSpeedLevel >= _maxLevel) return;
        if (currentExp.value < expToLevel.value) return;
        LevelUp();
    }

    private void LevelUp() {
        expBaseline.value = expToLevel.value;
        currentLevel.value++;
        IncreaseExperienceSlider();
        levelUpEvent.Invoke();
    }

    public void UpgradeProjectileAmount() {
        letterAmount.value++;
        _projectileAmountLevel++;

        if (_projectileAmountLevel >= _maxLevel) {
            projectileAmountButton.interactable = false;
        }
    }
    
    public void UpgradeProjectileDamage() {
        letterDamage.value *= 2;
        _projectileDamageLevel++;
        
        if (_projectileDamageLevel >= _maxLevel) {
            projectileDamageButton.interactable = false;
        }
    }
    
    public void UpgradeProjectileSpeed() {
        letterSpeed.value *= 1.1f;
        _projectileSpeedLevel++;
        
        if (_projectileSpeedLevel >= _maxLevel) {
            projectileSpeedButton.interactable = false;
        }
    }

    public void UpgradeCharacterSpeed() {
        characterSpeed.value *= 1.1f;
        _characterSpeedLevel++;
        
        if (_characterSpeedLevel >= _maxLevel) {
            characterSpeedButton.interactable = false;
        }
    }

    private void IncreaseExperienceSlider() {
        slider.IncreaseExperienceToLevel(currentLevel.value);
    }

}
