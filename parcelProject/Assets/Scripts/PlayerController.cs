using System;
using UnityEngine;
using UnityEngine.InputSystem;
using unityTools;

[RequireComponent(typeof(PlayerInput))]
[RequireComponent(typeof(CharacterController))]
public class PlayerController : MonoBehaviour {
    public float speed = 6f;
    public Vector3DataSO vector3DataSo;

    private CharacterController _characterController;
    private Vector3 _moveDir;
    private void Awake() {
        _characterController = GetComponent<CharacterController>();
        vector3DataSo.value = gameObject.transform.position;
    }
    
    private void OnMove(InputValue value) {
        var direction = value.Get<Vector2>();
        _moveDir = (new Vector3(direction.x, 0, direction.y)) * speed;
    }
    
    private void OnFire() {
        print("I'm Shooting");
    }

    private void OnMiddleClick() {
        Debug.Log("hey");
    }
    
    private void Update() { 
        _characterController.Move(_moveDir * Time.deltaTime);
        vector3DataSo.value = gameObject.transform.position;
    }
}
