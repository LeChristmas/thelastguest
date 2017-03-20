using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Health_Pack : MonoBehaviour {

    private GameObject healthbar;

    // Use this for initialization
    void Start ()
    {
        healthbar = GameObject.Find("Health_Bar");

        healthbar.GetComponent<Mental_Health>();
    }
	
	// Update is called once per frame
	void Update () {
		
	}

    public void Grab()
    {
        healthbar.SendMessage("HealthPack");
        Destroy(gameObject);
    }
}
