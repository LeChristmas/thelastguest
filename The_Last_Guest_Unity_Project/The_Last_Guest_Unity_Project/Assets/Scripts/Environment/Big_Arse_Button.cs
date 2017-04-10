using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Big_Arse_Button : MonoBehaviour {

    public string levelname;

    public void Game_Over ()
    {
        SceneManager.LoadScene(levelname);
    }
}
