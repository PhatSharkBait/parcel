using UnityEngine;
using unityTools;

public class TeleportBehaviour : MonoBehaviour {
    public Vector3DataSO vector3DataSo;

    public void TeleportToVector3Data() {
        gameObject.transform.position = vector3DataSo.value;
    }
}