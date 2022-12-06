using UnityEngine;
using UnityEngine.InputSystem;
//https://www.youtube.com/watch?v=4HpC--2iowE&ab_channel=Brackeys got some help on angle math here.
public class RotateWithController : MonoBehaviour {
    private Vector3 movementDir = Vector3.right;
    private Quaternion _rotation;
    private float turnSmoothTime = 0.1f;
    private float turnSmoothVelocity;
    
    private void OnMove(InputValue value) {
        movementDir = value.Get<Vector2>().normalized;
    }
    
    void Update() {
        if (!(movementDir.magnitude >= 0.1f)) return;
        float targetAngle = Mathf.Atan2(movementDir.y, -movementDir.x) * Mathf.Rad2Deg;
        float angle = Mathf.SmoothDampAngle(transform.eulerAngles.y, targetAngle, ref turnSmoothVelocity, turnSmoothTime);
        transform.rotation = Quaternion.Euler(0f, angle, 0f);
    }

}