using UnityEngine;
using UnityEngine.SceneManagement;
public class SceneBehaviour : MonoBehaviour {
    private Scene MainLevel;
    public void LoadMainLevel() {
        SceneManager.LoadScene("MainLevel", LoadSceneMode.Single);
    }
    public void LoadMainMenu() {
        SceneManager.LoadScene("MainMenu", LoadSceneMode.Single);
    }
}
