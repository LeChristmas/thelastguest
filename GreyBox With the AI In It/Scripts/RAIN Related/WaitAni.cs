using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaitAni : MonoBehaviour {

    public Animator waitanimation;

	// Use this for initialization
	void Start ()
    {
		
	}
	
	// Update is called once per frame
	void Update ()
    {
		
	}

    public void Wait()
    {
        waitanimation.Play("Wait", -1, 0f);
    }

}
