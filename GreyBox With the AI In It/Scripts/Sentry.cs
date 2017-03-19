using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class Sentry : MonoBehaviour
{

    public MentalHealth detect;

    public Transform player;

    public float ang = 5.0f;
    public float dis = 5.0f;

    public float navspeed;

    public float rotspeed;

    public float targetspeed;

    private bool hidden;

    private int act = 1;

    void Start()
    {
        hidden = false;
    }

    public void Hidden()
    {
        hidden = true;
    }

    public void UnHidden()
    {
        hidden = false;
    }

    // Update is called once per frame
    void Update()
    {
        switch(act)
        {
            case 1:
                gameObject.SetActive(true);
                break;

            case 2:
                gameObject.SetActive(false);
                break;
        }

        if(Input.GetKeyDown("q"))
        {
            if(act == 1)
            {
                act++;
            }
            else if(act == 2)
            {
                act--;
            }
        }

        Vector3 targetDir = player.position - transform.position;
        float angle = Vector3.Angle(targetDir, transform.forward);

        Vector3 targetDis = player.position - transform.position;
        float distance = Vector3.Distance(targetDis, transform.forward);


        if (angle < ang && distance < dis && !hidden)
        {
            transform.LookAt(player);
            //Debug.Log("seen");
            detect.SendMessage("HealthD");
        }
        else
        {
            Debug.Log("unseen");
        }
    }

}

