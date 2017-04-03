using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using RAIN.Entities;

public class Movement : MonoBehaviour {

    public string ws;
    public string ad;
    public string crouch;

    public Transform cam;

    private float speed;
    private float crouchspeed;

    public float speedH = 2.0f;
    public float speedV = 2.0f;

    public GameObject detector;
    EntityRig myrig;

    private float yaw = 0.0f;
    private float pitch = 0.0f;
    private float pitchY;

    public float minimumY = -60.0f;
    public float maximumY = 60.0f;

    public float s = 0.1f;
    public float cs = 0.05f;

    public float crouchheight = 0.5f;

    private bool crouched;
    private bool coverhiding;
    private bool areahiding;

    private bool paused = false;

    // Use this for initialization
    void Start ()
    {
        crouched = false;
        coverhiding = false;
        areahiding = false;

        speed = s;
        crouchspeed = cs;

        myrig = detector.GetComponent<EntityRig>();
    }
	
    public void CovHidden()
    {
        coverhiding = true;
    }

    public void CovUnHidden()
    {
        coverhiding = false;
    }

    public void ArHidden()
    {
        areahiding = true;
    }

    public void ArUnHidden()
    {
        areahiding = false;
    }

    // Update is called once per frame
    void Update ()
    {
        // other keys on the keyboard
        if (Input.GetKeyDown(crouch))
        {
            cam.Translate(0.0f, -crouchheight, 0.0f);
            crouched = true;
        }
        else if (Input.GetKeyUp(crouch))
        {
            cam.Translate(0.0f, crouchheight, 0.0f);
            crouched = false;
        }


        // movement and mouse controls
        float moveHorizontal = Input.GetAxis(ws);
        float moveVertical = Input.GetAxis(ad);

        if (paused == false)
        {
            yaw += speedH * Input.GetAxis("Mouse X");
            pitch -= speedV * Input.GetAxis("Mouse Y");
            pitchY = Mathf.Clamp(pitch, minimumY, maximumY);
        }

        transform.eulerAngles = new Vector3(0.0f, yaw, 0.0f);
        cam.eulerAngles = new Vector3(pitchY, yaw, 0.0f);

        if (!crouched)
        {
            transform.Translate(moveHorizontal * speed, 0.0f, moveVertical * speed);

            myrig.Entity.IsActive = true;
        }

        if (crouched)
        {
            transform.Translate(moveHorizontal * crouchspeed, 0.0f, moveVertical * crouchspeed);

            myrig.Entity.IsActive = true;
        }

        if (crouched && coverhiding)
        {
            transform.Translate(moveHorizontal * crouchspeed, 0.0f, moveVertical * crouchspeed);

            myrig.Entity.IsActive = false;
        }

        if (!crouched && areahiding)
        {
            transform.Translate(moveHorizontal * speed, 0.0f, moveVertical * speed);

            myrig.Entity.IsActive = false;
        }

        if (crouched && areahiding)
        {
            transform.Translate(moveHorizontal * crouchspeed, 0.0f, moveVertical * crouchspeed);

            myrig.Entity.IsActive = false;
        }


    }

    public void UnPaused()
    {
        paused = false;

        speed = s;
        crouchspeed = cs;
    }

    public void Paused()
    {
        paused = true;

        speed = 0.0f;
        crouchspeed = 0.0f;
    }
}