using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Scene_Resetter : MonoBehaviour {

    private Scene active_scene;

    void Start ()
    {
        active_scene = SceneManager.GetActiveScene();
    }

    // Update is called once per frame
    public void OnClick()
    {
        SceneManager.LoadScene(active_scene.name);
    }
}