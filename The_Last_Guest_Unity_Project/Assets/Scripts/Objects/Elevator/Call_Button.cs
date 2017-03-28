using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Call_Button : MonoBehaviour {

    public Animator leftdoor;
    public Animator rightdoor;

    public float delay = 6.0f;
    private float waiter;

    private bool waiting = true;

    void Start()
    {
        waiter = Time.time + delay;
    }

    void Update()
    {
        if(waiter < Time.time)
        {
            waiting = false;
        }
    }

    public void Call()
    {
        if(waiting == false)
        {
            waiter = Time.time + delay;

            waiting = true;

            Debug.Log("Ye");
            leftdoor.Play("Door_Left", -1, 0f);
            rightdoor.Play("Door_Right", -1, 0f);
        }
    }
}
