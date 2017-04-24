using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Dead_Body : MonoBehaviour
{

    public float dis = 10.0f;

    private GameObject player;
    private Transform playertransform;

    private GameObject health;
    private Mental_Health hel;

    // Use this for initialization
    void Start()
    {
        player = GameObject.Find("Player_Camera");
        playertransform = player.GetComponent<Transform>();

        health = GameObject.Find("Health_Bar");
        hel = health.GetComponent<Mental_Health>();
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 targetDis = playertransform.position - transform.position;
        float distance = Vector3.Distance(targetDis, transform.forward);

        if (distance < dis)
        {
            hel.Bodies();
        }
    }
}
