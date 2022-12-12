using UnityEngine;
[RequireComponent(typeof(MeshRenderer))]
public class DisableMeshRenderer : MonoBehaviour {
    private MeshRenderer _renderer;
    private void Awake() {
        _renderer = GetComponent<MeshRenderer>();
    }

    public void Disable() {
        _renderer.enabled = false;
    }
}
