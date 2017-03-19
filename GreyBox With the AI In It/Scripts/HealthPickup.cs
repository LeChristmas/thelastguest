using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthPickup : MonoBehaviour {

    private GameObject healthbar;

	// Use this for initialization
	void Start ()
    {
        healthbar = GameObject.Find("Health Bar");

        healthbar.GetComponent<MentalHealth>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void Heal()
    {
        healthbar.SendMessage("HealthPick");
        Destroy(gameObject);
    }
}
