using TMPro;
using UnityEngine;
using UnityEngine.UI;
using unityTools;

[RequireComponent(typeof(Slider))]
public class ExpSlider : MonoBehaviour {
    public IntDataSO currentExp, maxExp;
    public TextMeshProUGUI textMeshPro;
    
    private Slider _slider;

    private void Awake() {
        _slider = GetComponent<Slider>();
    }

    private void Start() {
        currentExp.value = 0;
        UpdateSlider();
    }

    public void UpdateSlider() {
        float currentExpValue = currentExp.value;
        float maxExpValue = maxExp.value;

        textMeshPro.text = currentExpValue + "/" + maxExpValue;
        _slider.value = currentExpValue / maxExpValue;
    }
}
