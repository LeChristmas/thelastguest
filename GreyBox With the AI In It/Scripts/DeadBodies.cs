using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeadBodies : MonoBehaviour {

    public float dis = 10.0f;

    private GameObject player;
    private Transform playertransform;

    private GameObject health;
    private MentalHealth hel;

	// Use this for initialization
	void Start ()
    {
        player = GameObject.Find("Player");
        playertransform = player.GetComponent<Transform>();

        health = GameObject.Find("Health Bar");
        hel = health.GetComponent<MentalHealth>();
	}
	
	// Update is called once per frame
	void Update ()
    {
        //if(player == null)
        //{
        //    Debug.Log("Player not found");
        //}
        //else
        //{
        //    Debug.Log("Player Found");
        //}

        //if(health == null)
        //{
        //    Debug.Log("Health Not Found");
        //}
        //else
        //{
        //    Debug.Log("Health Found");
        //}

        Vector3 targetDis = playertransform.position - transform.position;
        float distance = Vector3.Distance(targetDis, transform.forward);

        if(distance < dis)
        {
            hel.Bodies();
        }
    }
}
