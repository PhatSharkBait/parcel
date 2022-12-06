using TMPro;
using UnityEngine;
[RequireComponent(typeof(TextMeshProUGUI))]
public class TimerBehaviour : MonoBehaviour {
    private TextMeshProUGUI _textMeshPro;
    private void Awake() {
        _textMeshPro = gameObject.GetComponent<TextMeshProUGUI>();
    }

    public void UpdateTimer(int seconds) {
        _textMeshPro.text = FormatTime(seconds);
    }

    private static string FormatTime(int totalSeconds) {
        int minutes = totalSeconds / 60;
        int seconds = totalSeconds % 60;
        return $"{minutes:00}" + ":" + $"{seconds:00}";
    }
}
