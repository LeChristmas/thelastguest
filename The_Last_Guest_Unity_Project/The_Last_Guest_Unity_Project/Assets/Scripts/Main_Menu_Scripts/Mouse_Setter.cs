using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Mouse_Setter : MonoBehaviour {

    private CursorLockMode menuMode = CursorLockMode.None;

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update ()
    {
        Cursor.lockState = menuMode;
        Cursor.visible = true;
    }
}
