﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealthDrainer : MonoBehaviour {


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

    public void DrainOne()
    {
        healthbar.SendMessage("HealthDrainOne");
    }

    public void DrainTwo()
    {
        healthbar.SendMessage("HealthDrainTwo");
    }

    public void DrainThree()
    {
        healthbar.SendMessage("HealthDrainThree");
    }

    public void DrainFour()
    {
        healthbar.SendMessage("HealthDrainFour");
    }
}
