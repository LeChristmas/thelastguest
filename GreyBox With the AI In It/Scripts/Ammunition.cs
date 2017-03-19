using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ammunition : MonoBehaviour {

    private GameObject stungun;

	// Use this for initialization
	void Start ()
    {
        stungun = GameObject.Find("Stun Gun");

        stungun.GetComponent<StunGun>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void Ammo()
    {
        stungun.SendMessage("Fill");

        Destroy(gameObject);
    }
}
