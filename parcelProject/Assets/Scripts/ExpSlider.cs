using TMPro;
using UnityEngine;
using UnityEngine.UI;
using unityTools;

[RequireComponent(typeof(Slider))]
public class ExpSlider : MonoBehaviour {
    public IntDataSO currentExp, expToLevel, expBaseline;
    public TextMeshProUGUI textMeshPro;
    
    private Slider _slider;

    private void Awake() {
        _slider = GetComponent<Slider>();
    }

    private void Start() {
        currentExp.value = 0;
        expBaseline.value = 0;
        expToLevel.value = 100;
        UpdateSlider();
    }

    public void UpdateSlider() {
        float currentExpValue = currentExp.value;
        float maxExpValue = expToLevel.value;
        float expBaselineValue = expBaseline.value;

        textMeshPro.text = currentExpValue + "/" + maxExpValue;
        _slider.value = (currentExpValue - expBaselineValue) / (maxExpValue - expBaselineValue);
    }

    public void IncreaseExperienceToLevel(int incAmount) {
        expToLevel.value += incAmount;
        UpdateSlider();
    }
}
