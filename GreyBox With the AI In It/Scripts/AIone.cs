using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class AIone : MonoBehaviour {

    public MentalHealth detect;

    public Transform player;

    public float ang = 5.0f;
    public float dis = 5.0f;

    public float stuntime = 1.0f;

    public Transform navA;
    public Transform navB;

    private Vector3 posnavA;
    private Vector3 posnavB;

    private Quaternion rotnavA;
    private Quaternion rotnavB;

    public float navspeed;

    public float rotspeed;

    public float targetspeed;

    private bool hidden;

    private bool stunned;

    private float nextstun = 0.0f;

    void Start()
    {

        hidden = false;

        stunned = false;

        posnavA = navA.position;
        posnavB = navB.position;

        rotnavA = navA.rotation;
        rotnavB = navB.rotation;

        transform.rotation = rotnavA;
    }

    public void Hidden()
    {
        hidden = true;
    }

    public void UnHidden()
    {
        hidden = false;
    }

    void OnCollisionEnter(Collision other)
    {
        Debug.Log("hit");

        if (other.gameObject.CompareTag("bullet"))
        {
            Debug.Log("bullet detected");
            gameObject.SendMessage("Stunned");
            Destroy(other.gameObject);
        }
    }

    public void Stunned()
    {
        nextstun = Time.time + stuntime;
        stunned = true;
    }

    // Update is called once per frame
    void FixedUpdate ()
    {
        if (Time.time > nextstun)
        {
            stunned = false;
        }

        Vector3 targetDir = player.position - transform.position;
        float angle = Vector3.Angle(targetDir, transform.forward);

        Vector3 targetDis = player.position - transform.position;
        float distance = Vector3.Distance(targetDis, transform.forward);

        Vector3 navAdis = posnavA - transform.position;
        float distanceA = Vector3.Distance(navAdis, transform.forward);

        Vector3 navBdis = posnavB - transform.position;
        float distanceB = Vector3.Distance(navBdis, transform.forward);


        if (angle < ang && distance < dis && !hidden && !stunned)
        {
            transform.LookAt(player);
            transform.position = Vector3.Lerp(transform.position, player.position, targetspeed * Time.deltaTime);
            detect.SendMessage("HealthD");
        }
        else
        {
            if(!stunned)
            {
                transform.position = Vector3.Lerp(posnavA, posnavB, Mathf.PingPong(Time.time * navspeed, 1.0f));

                if (distanceA < 0.1f)
                {
                    transform.rotation = rotnavA;
                }
                else if (distanceB < 0.1f)
                {
                    transform.rotation = rotnavB;
                }
            }
        }
    }

}
