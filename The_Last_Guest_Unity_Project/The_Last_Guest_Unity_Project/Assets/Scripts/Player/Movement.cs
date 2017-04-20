using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using RAIN.Entities;
using UnityEngine.UI;

public class Movement : MonoBehaviour
{

    public Rigidbody rb;

    // Controls
    public string up;
    public string down;
    public string left;
    public string right;

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
    public float standard_vertical_speed = 8.0f;
    public float standard_horizontal_speed = 8.0f;

    public float crouch_vertical_speed = 5.0f;
    public float crouch_horizontal_speed = 5.0f;

    public float sprint_vertical_speed = 13.0f;
    public float sprint_horizontal_speed = 13.0f;

    private float yaw = 0.0f;
    private float pitch = 0.0f;
    private float pitchY;

    // Crouch Height
    public float crouch_height = 0.5f;

    // Sprint UI Stuff
    public GameObject sprint_gameobject;
    public GameObject sprint_exhausted_gameobject;
    public float sprint_fill_amount;
    public float sprint_drain_sensitivity = 0.1f;
    public float sprint_regen_sensititvity = 0.1f;

    private bool sprint_active = false;
    private bool sprint_delay = false;

    private Image sprint_UI;
    private Image sprint_exhausted_UI;
    private float sprint_drain;
    private float sprint_regen;

    // Hiding Bools
    private bool crouched;
    private bool cover_hiding;
    private bool area_hiding;

    private bool paused = false;

    // Use this for initialization
    void Start()
    {
        crouched = false;
        cover_hiding = false;
        area_hiding = false;

        myrig = detector.GetComponent<EntityRig>();

        sprint_UI = sprint_gameobject.GetComponent<Image>();
        sprint_UI.fillAmount = 1.0f;

        sprint_exhausted_UI = sprint_exhausted_gameobject.GetComponent<Image>();
        sprint_exhausted_UI.fillAmount = 1.0f;

        sprint_UI.enabled = true;
        sprint_exhausted_UI.enabled = false;
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


        //mouse controls
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
            // Forward
            if (Input.GetKey(up))
            {
                rb.MovePosition(transform.position + transform.forward * standard_vertical_speed * Time.deltaTime);
            }

            // Back
            if (Input.GetKey(down))
            {
                rb.MovePosition(transform.position - transform.forward * standard_vertical_speed * Time.deltaTime);
            }

            // Right
            if (Input.GetKey(right))
            {
                rb.MovePosition(transform.position + transform.right * standard_horizontal_speed * Time.deltaTime);
            }

            // Left
            if (Input.GetKey(left))
            {
                rb.MovePosition(transform.position - transform.right * standard_horizontal_speed * Time.deltaTime);
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

        if (crouched && !sprint_active)
        {
            // Forward
            if (Input.GetKey(up))
            {
                rb.MovePosition(transform.position + transform.forward * crouch_vertical_speed * Time.deltaTime);
            }

            // Back
            if (Input.GetKey(down))
            {
                rb.MovePosition(transform.position - transform.forward * crouch_vertical_speed * Time.deltaTime);
            }

            // Right
            if (Input.GetKey(right))
            {
                rb.MovePosition(transform.position + transform.right * crouch_horizontal_speed * Time.deltaTime);
            }

            // Left
            if (Input.GetKey(left))
            {
                rb.MovePosition(transform.position - transform.right * crouch_horizontal_speed * Time.deltaTime);
            }

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
            sprint_exhausted_UI.fillAmount += sprint_regen;
        }

        if (Input.GetKey(sprint) && !crouched && sprint_UI.fillAmount > 0.0f && !sprint_delay)
        {

            // Forward
            if (Input.GetKey(up))
            {
                rb.MovePosition(transform.position + transform.forward * sprint_vertical_speed * Time.deltaTime);
            }

            // Back
            if (Input.GetKey(down))
            {
                rb.MovePosition(transform.position - transform.forward * sprint_vertical_speed * Time.deltaTime);
            }

            // Right
            if (Input.GetKey(right))
            {
                rb.MovePosition(transform.position + transform.right * sprint_horizontal_speed * Time.deltaTime);
            }

            // Left
            if (Input.GetKey(left))
            {
                rb.MovePosition(transform.position - transform.right * sprint_horizontal_speed * Time.deltaTime);
            }

            myrig.Entity.IsActive = true;

            sprint_UI.fillAmount -= sprint_drain;
            sprint_exhausted_UI.fillAmount -= sprint_drain;


            sprint_active = true;
        }

        if(sprint_delay == true)
        {
            // Forward
            if (Input.GetKey(up))
            {
                rb.MovePosition(transform.position + transform.forward * crouch_vertical_speed * Time.deltaTime);
            }

            // Back
            if (Input.GetKey(down))
            {
                rb.MovePosition(transform.position - transform.forward * crouch_vertical_speed * Time.deltaTime);
            }

            // Right
            if (Input.GetKey(right))
            {
                rb.MovePosition(transform.position + transform.right * crouch_horizontal_speed * Time.deltaTime);
            }

            // Left
            if (Input.GetKey(left))
            {
                rb.MovePosition(transform.position - transform.right * crouch_horizontal_speed * Time.deltaTime);
            }

            myrig.Entity.IsActive = true;
        }

        if (sprint_UI.fillAmount > 0.9f)
        {
            sprint_delay = false;

            sprint_UI.enabled = true;
            sprint_exhausted_UI.enabled = false;
        }

        if (Input.GetKeyUp(sprint) || sprint_UI.fillAmount < 0.01f)
        {
            sprint_UI.enabled = false;
            sprint_exhausted_UI.enabled = true;

            sprint_active = false;
            sprint_delay = true;
        }


    }

    public void UnPaused()
    {
        paused = false;
    }

    public void Paused()
    {
        paused = true;
    }
}