using System.Collections.Generic;
using UnityEngine;
using unityTools;
[RequireComponent(typeof(MeshRenderer))]
public class ExpBehaviour : MonoBehaviour {
    public List<Material> materials;
    public IntDataSO currentExp, expToNextLevel;
    public GameAction updateExp;

    private int _expValue;
    private MeshRenderer _meshRenderer;

    private void Awake() {
        _meshRenderer = GetComponent<MeshRenderer>();
    }

    public void SetExpValue(int value) {
        _expValue = value;
        UpdateMaterial();
    }

    private void UpdateMaterial() {
        _meshRenderer.material = _expValue switch {
            <= 50 => materials[0],
            <= 100 => materials[1],
            <= 200 => materials[2],
            <= 1000 => materials[3],
            _ => _meshRenderer.material
        };
    }

    private void UpdateSlider() {
       updateExp.RaiseAction();
    }

    public void PlayerPickup() {
        currentExp.value += _expValue;
        UpdateSlider();
        Destroy(gameObject);
    }
}
