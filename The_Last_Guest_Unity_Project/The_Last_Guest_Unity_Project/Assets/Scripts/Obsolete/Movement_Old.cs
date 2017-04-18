using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using RAIN.Entities;
using UnityEngine.UI;

public class Movement_Old : MonoBehaviour {

    // Controls
    public string ws;
    public string ad;
    public string crouch;
    public string sprint;

    // Camera
    public Transform cam;

    // RAIN
    public GameObject detector;
    EntityRig myrig;

    // Mouse Stuff
    public float speedH = 2.0f;
    public float speedV = 2.0f;
    public float minimumY = -60.0f;
    public float maximumY = 60.0f;

    // Movement Speeds
    public float s = 0.1f;
    public float cs = 0.05f;
    public float ss = 0.5f;

    private float speed;
    private float crouch_speed;
    private float sprint_speed;

    private float yaw = 0.0f;
    private float pitch = 0.0f;
    private float pitchY;

    // Crouch Height
    public float crouch_height = 0.5f;

    // Sprint UI Stuff
    public GameObject sprint_gameobject;
    public float sprint_fill_amount;
    public float sprint_drain_sensitivity = 0.1f;
    public float sprint_regen_sensititvity = 0.1f;

    private bool sprint_active = false;
    private bool sprint_delay = false;

    private Image sprint_UI;
    private float sprint_drain;
    private float sprint_regen;

    // Hiding Bools
    private bool crouched;
    private bool cover_hiding;
    private bool area_hiding;

    private bool paused = false;

    // Use this for initialization
    void Start ()
    {
        crouched = false;
        cover_hiding = false;
        area_hiding = false;

        speed = s;
        crouch_speed = cs;
        sprint_speed = ss;

        myrig = detector.GetComponent<EntityRig>();

        sprint_UI = sprint_gameobject.GetComponent<Image>();
        sprint_UI.fillAmount = 1.0f;
    }
	
    public void CovHidden()
    {
        cover_hiding = true;
    }

    public void CovUnHidden()
    {
        cover_hiding = false;
    }

    public void ArHidden()
    {
        area_hiding = true;
    }

    public void ArUnHidden()
    {
        area_hiding = false;
    }

    // Update is called once per frame
    void Update()
    {
        // other keys on the keyboard
        if (Input.GetKeyDown(crouch))
        {
            cam.Translate(0.0f, -crouch_height, 0.0f);
            crouched = true;
        }
        else if (Input.GetKeyUp(crouch))
        {
            cam.Translate(0.0f, crouch_height, 0.0f);
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

            if (area_hiding)
            {
                myrig.Entity.IsActive = false;
            }
            else
            {
                myrig.Entity.IsActive = true;
            }
        }

        if (crouched)
        {
            transform.Translate(moveHorizontal * crouch_speed, 0.0f, moveVertical * crouch_speed);

            myrig.Entity.IsActive = true;

            if (cover_hiding)
            {
                myrig.Entity.IsActive = false;
            }
            else
            {
                myrig.Entity.IsActive = true;
            }

            if (area_hiding)
            {
                myrig.Entity.IsActive = false;
            }
            else
            {
                myrig.Entity.IsActive = true;
            }
        }

        sprint_drain = sprint_drain_sensitivity * 1.0f;
        sprint_regen = sprint_regen_sensititvity * 1.0f;

        if (sprint_active == false && sprint_UI.fillAmount < 1.0f)
        {
            sprint_UI.fillAmount += sprint_regen;
        }

        if (Input.GetKey(sprint) && !crouched && sprint_UI.fillAmount > 0.0f && !sprint_delay)
        {
            transform.Translate(moveHorizontal * sprint_speed, 0.0f, moveVertical * sprint_speed);

            myrig.Entity.IsActive = true;

            sprint_UI.fillAmount -= sprint_drain;


            sprint_active = true;
        }

        if(sprint_UI.fillAmount > 0.9f)
        {
            sprint_delay = false;
        }

        if(Input.GetKeyUp(sprint))
        {
            sprint_active = false;
            sprint_delay = true;
        }


    }

    public void UnPaused()
    {
        paused = false;

        speed = s;
        crouch_speed = cs;
    }

    public void Paused()
    {
        paused = true;

        speed = 0.0f;
        crouch_speed = 0.0f;
    }
}