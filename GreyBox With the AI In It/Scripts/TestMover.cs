using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestMover : MonoBehaviour {

    public float range;

    private float yaw = 0.0f;

    public float speedH = 2.0f;

    // Use this for initialization
    void Start () {
		
	}

    // Update is called once per frame
    void Update()
    {
        float h = Input.GetAxis("Horizontal");
        float v = Input.GetAxis("Vertical");

        float xPos = h * range;
        float zPos = v * range;

        transform.Translate(xPos, 0, zPos);

        yaw += speedH * Input.GetAxis("Mouse X");

        transform.eulerAngles = new Vector3(0, yaw, 0.0f);
    }
}
