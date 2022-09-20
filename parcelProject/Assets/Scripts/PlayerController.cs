using UnityEngine;
using UnityEngine.InputSystem;

[RequireComponent(typeof(PlayerInput))]
public class PlayerController : MonoBehaviour {
    public void OnMove(InputValue value) {
        var direction = value.Get<Vector2>();
        print("I'm moving");
    }

    public void OnFire() {
        print("I'm Shooting");
    }

    private void OnMiddleClick() {
        Debug.Log("hey");
    }
}
