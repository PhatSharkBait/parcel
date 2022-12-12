using UnityEngine;
using UnityEngine.InputSystem;
using unityTools;
using TouchPhase = UnityEngine.InputSystem.TouchPhase;

[RequireComponent(typeof(PlayerInput))]
[RequireComponent(typeof(CharacterController))]
public class PlayerController : MonoBehaviour {
    public float speed = 6f;
    public Vector3DataSO vector3DataSo, moveDirectionSO;
    public FloatDataSO speedUpgradeMult;

    private CharacterController _characterController;
    private Vector3 _moveDir;
    private float _rotationValue;
    private void Awake() {
        _characterController = GetComponent<CharacterController>();
        vector3DataSo.value = gameObject.transform.position;
    }
    
    private void OnMove(InputValue value) {
        var relativePosition = new Vector2((value.Get<Vector2>().x - (Screen.width/2f)),
            (value.Get<Vector2>().y - (Screen.height/2f))).normalized;
        moveDirectionSO.value = relativePosition;
        _moveDir = (new Vector3(relativePosition.x, 0, relativePosition.y)) * speed * speedUpgradeMult.value;
    }

    private void OnFingerOff(InputValue value) {
        if (value.Get<TouchPhase>() != TouchPhase.Ended) return;
        _moveDir = Vector3.zero;
        moveDirectionSO.value = Vector3.zero;
    }
    
    private void OnFire() {
        print("I'm Shooting");
    }

    private void OnMiddleClick() {
        Debug.Log("hey");
    }
    
    private void Update() {
        var position = gameObject.transform.position;
        _characterController.Move(_moveDir * Time.deltaTime);
        vector3DataSo.value = position;
    }

    public void SetMovementToZero() {
        _moveDir = Vector3.zero;
    }
}
