using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Scene_Changer : MonoBehaviour {

    public string scenename;

	// Update is called once per frame
	public void OnClick()
    {
        SceneManager.LoadScene(scenename);
	}
}
