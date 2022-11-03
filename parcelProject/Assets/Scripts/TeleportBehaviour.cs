using UnityEngine;
using unityTools;

public class TeleportBehaviour : MonoBehaviour {
    public Vector3DataSO vector3DataSo;

    public void TeleportToVector3Data() {
        gameObject.transform.position = vector3DataSo.value;
    }

    public void TeleportRandomDirectionDistanceVector3Data(float distance) {
        float xDir;
        float zDir;
        int generalDirection = Random.Range(0, 4);
        switch (generalDirection) {
            case 0:
                xDir = Random.Range(0.01f, 1f) * -1;
                zDir = Random.Range(0.01f, 1f) * -1;
                break;
            case 1:
                xDir = Random.Range(0.01f, 1f) * -1;
                zDir = Random.Range(0.01f, 1f);
                break;
            case 2:
                xDir = Random.Range(0.01f, 1f);
                zDir = Random.Range(0.01f, 1f) * -1;
                break;
            default:
                xDir = Random.Range(0.01f, 1f);
                zDir = Random.Range(0.01f, 1f);
                break;
        }
        Vector3 dir = (new Vector3(xDir, 0, zDir)).normalized;
        gameObject.transform.position = vector3DataSo.value + (dir * distance);
    }
}