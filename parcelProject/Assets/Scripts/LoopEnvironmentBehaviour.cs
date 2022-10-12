using System.Collections;
using UnityEngine;
using UnityEngine.AI;
using unityTools;

public class LoopEnvironmentBehaviour : MonoBehaviour {
    public float environmentOffsetAmount = 100f;
    public Vector3DataSO playerLocationObj;
    public bool canRun = true;
    public NavMeshData navMeshData;

    private WaitForSeconds _waitForSeconds;
    private Vector3 _currentLocation;

    private void Awake() {
        _waitForSeconds = new WaitForSeconds(.5f);
        _currentLocation = transform.position;
    }

    private IEnumerator Start() {
        Vector3 newPosition = _currentLocation;
        while (canRun) {
            var xPos = false;
            var xNeg = false;
            var zPos = false;
            var zNeg = false;
            if (playerLocationObj.value.x > (_currentLocation.x + environmentOffsetAmount)) {
                xPos = true;
                newPosition.x += environmentOffsetAmount;
            }
            if (playerLocationObj.value.x < (_currentLocation.x - environmentOffsetAmount)) {
                xNeg = true;
                newPosition.x -= environmentOffsetAmount;
            }
            if (playerLocationObj.value.z > (_currentLocation.z + environmentOffsetAmount)) {
                zPos = true;
                newPosition.z += environmentOffsetAmount;
            }
            if (playerLocationObj.value.z < (_currentLocation.z - environmentOffsetAmount)) {
                zNeg = true;
                newPosition.z -= environmentOffsetAmount;
            }

            if (xPos || xNeg || zPos || zNeg) {
                Teleport(newPosition);
            }
            yield return _waitForSeconds;
        }
    }

    private void Teleport(Vector3 newPosition) {
        transform.position = newPosition;
        _currentLocation = newPosition;
        var newNavMeshPos = new Vector3(_currentLocation.x, navMeshData.position.y, _currentLocation.z);
        NavMesh.RemoveAllNavMeshData();
        NavMesh.AddNavMeshData(navMeshData, newNavMeshPos, Quaternion.identity);
    }
    
}
