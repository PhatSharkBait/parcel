using UnityEngine;
using unityTools;

public class WalkAnimator : MonoBehaviour {
    public float stopAnimation = 0.1f;
    public Vector3DataSO MoveDirectionSO;

    private Animator _animator;
    private Vector3 _moveDir;
    private static readonly int WalkProperty = Animator.StringToHash("Walk Cycle");
    private static readonly int StopProperty = Animator.StringToHash("Stopped");
    private int CurrentProperty;

    private void Awake() {
        _animator = gameObject.GetComponent<Animator>();
        _animator.SetTrigger(WalkProperty);
        CurrentProperty = WalkProperty;
    }

    private void Update() {
        _moveDir = MoveDirectionSO.value;
        if ((_moveDir.x > stopAnimation || _moveDir.x < -stopAnimation) ||
            (_moveDir.y > stopAnimation || _moveDir.y < -stopAnimation)) {
            if (CurrentProperty != StopProperty) return;
            _animator.SetTrigger(WalkProperty);
            CurrentProperty = WalkProperty;
        }
        else {
            if (CurrentProperty != WalkProperty) return;
            _animator.SetTrigger(StopProperty);
            CurrentProperty = StopProperty;
        }
    }
}
