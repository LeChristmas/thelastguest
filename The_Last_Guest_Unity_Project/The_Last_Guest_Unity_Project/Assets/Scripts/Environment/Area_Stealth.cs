using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Area_Stealth : MonoBehaviour
{

    private GameObject player;
    private Movement movementscript;

    // Use this for initialization
    void Start()
    {
        player = GameObject.Find("Player");
        movementscript = player.GetComponent<Movement>();
    }

    // Update is called once per frame
    //void Update ()
    //   {
    //	if(player != null)
    //       {
    //           Debug.Log("Player Found - Player = " + player);
    //       }
    //}

    void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            //Debug.Log("Hiding");
            movementscript.ArHidden();
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            //Debug.Log("Adios");
            movementscript.ArUnHidden();
        }
    }
}
