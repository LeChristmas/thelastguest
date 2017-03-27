using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Elevator_Main : MonoBehaviour {

    public Transform up_point;
    public Transform down_point;

    public GameObject up_light;
    public GameObject down_light;

    public Transform up_light_point;
    public Transform down_light_point;

    public Animator up_light_animator;
    public Animator down_light_animator;

    public float light_delay = 6.0f;

    public GameObject call;

    private GameObject player;
    private Transform player_transform;

    private Transform up_light_transform;
    private Transform down_light_transform;

    private float up_light_wait;
    private float down_light_wait;

    private bool up_light_active = false;
    private bool down_light_active = false;

    private Call_Button call_button;

    // Use this for initialization
    void Start ()
    {
        player = GameObject.Find("Player");
        player_transform = player.GetComponent<Transform>();

        up_light_transform = up_light.GetComponent<Transform>();
        down_light_transform = down_light.GetComponent<Transform>();

        up_light.SetActive(false);
        down_light.SetActive(false);

        call_button = call.GetComponent<Call_Button>();
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (up_light_wait < Time.time && up_light_active)
        {
            player_transform.position = up_point.position;
            up_light_active = false;
            up_light.SetActive(false);

            call_button.Call();
        }

        if (down_light_wait < Time.time && down_light_active)
        {
            player_transform.position = down_point.position;
            down_light_active = false;
            down_light.SetActive(false);

            call_button.Call();
        }
    }

    public void Above ()
    {
        up_light.SetActive(true);
        up_light_transform.position = up_light_point.position;
        up_light_animator.Play("Light_Up", -1, 0f);
        up_light_wait = Time.time + light_delay;
        up_light_active = true;
    }

    public void Below ()
    {
        down_light.SetActive(true);
        down_light_transform.position = down_light_point.position;
        down_light_animator.Play("Light_Down", -1, 0f);
        down_light_wait = Time.time + light_delay;
        down_light_active = true;
    }
}
