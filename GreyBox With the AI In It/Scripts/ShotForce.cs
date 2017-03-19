using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShotForce : MonoBehaviour {

    public float magnitude = 1.0f;

    public float timetodie = 2.0f;

    private float lefttodie = 0.0f;

    // Use this for initialization
    void Start ()
    {
        GetComponent<Rigidbody>().AddForce(magnitude * transform.forward);
        lefttodie = Time.time + timetodie;
    }
	
	// Update is called once per frame
	void Update ()
    {

        if(Time.time > lefttodie)
        {
            Destroy(gameObject);
        }
	}
}
