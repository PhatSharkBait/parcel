using System.Collections;
using UnityEngine;
using UnityEngine.InputSystem;

[RequireComponent(typeof(PlayerInput))]
[RequireComponent(typeof(CharacterController))]
public class PlayerController : MonoBehaviour {
    public float speed = 6f;
    
    private CharacterController _characterController;
    private WaitForFixedUpdate _waitForFixedUpdate;
    private Vector3 _moveDir;
    public bool _canMove;
    private void Awake() {
        _characterController = GetComponent<CharacterController>();
        _waitForFixedUpdate = new WaitForFixedUpdate();
    }

    private void OnMove(InputValue value) {
        var direction = value.Get<Vector2>();
        _moveDir = (new Vector3(direction.x, 0, direction.y)) * speed;

        // if (_moveDir == Vector3.zero) {
        //     _canMove = false;
        // } else if (!_canMove) {
        //     StartCoroutine(PerformMovement());
        // }

        if (!_canMove && _moveDir != Vector3.zero) {
            StartCoroutine(PerformMovement());
        } else if (_moveDir == Vector3.zero) {
            _canMove = false;
        }
    }
    
    private void OnFire() {
        print("I'm Shooting");
    }

    private void OnMiddleClick() {
        Debug.Log("hey");
    }

    private IEnumerator PerformMovement() {
        _canMove = true;
        while (_canMove) {
            _characterController.Move(_moveDir*Time.deltaTime);
            yield return _waitForFixedUpdate;
        }
    }
}
