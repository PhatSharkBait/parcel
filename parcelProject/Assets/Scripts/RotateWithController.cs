using UnityEngine;
using UnityEngine.InputSystem;

public class RotateWithController : MonoBehaviour {
    private Quaternion _rotation;
    
    private void OnMove(InputValue value) {
        var direction = value.Get<Vector2>();
        direction.Normalize();
        _rotation = Quaternion.Euler(0, (Mathf.Acos(direction.x) * Mathf.Rad2Deg), 0);
        transform.rotation = _rotation;
    }

}