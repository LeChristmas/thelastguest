using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Pickup_Script : MonoBehaviour
{

    Camera cam;

    public Text pickuptext;

    public float pickupdistance = 1.0f;

    //public HealthPickup pickup;

    // Use this for initialization
    void Start()
    {
        cam = GetComponent<Camera>();
        pickuptext.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        Ray ray = cam.ViewportPointToRay(new Vector3(0.5f, 0.5f));
        RaycastHit hit;

        if (Physics.Raycast(ray, out hit))
        {
            Vector3 targetDis = hit.transform.position - transform.position;
            float distance = Vector3.Distance(targetDis, transform.forward);

            pickuptext.enabled = false;

            if (hit.collider.CompareTag("pack") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    //Debug.Log("packs");
                    hit.collider.SendMessage("Grab");
                }
            }

            if (hit.collider.CompareTag("pick") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    //Debug.Log("Pressed");
                    hit.collider.SendMessage("Heal");
                }
            }

            if (hit.collider.CompareTag("ammo") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Ammo");
                }
            }

            //Keypad

            if (hit.collider.CompareTag("one") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Onekey");
                }
            }

            if (hit.collider.CompareTag("two") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Twokey");
                }
            }

            if (hit.collider.CompareTag("three") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Threekey");
                }
            }

            if (hit.collider.CompareTag("four") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Fourkey");
                }
            }

            if (hit.collider.CompareTag("five") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Fivekey");
                }
            }

            if (hit.collider.CompareTag("six") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Sixkey");
                }
            }

            if (hit.collider.CompareTag("seven") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Sevenkey");
                }
            }

            if (hit.collider.CompareTag("eight") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Eightkey");
                }
            }

            if (hit.collider.CompareTag("nine") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Ninekey");
                }
            }

            if (hit.collider.CompareTag("zero") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Zerokey");
                }
            }

            if (hit.collider.CompareTag("clear") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Clearkey");
                }
            }

            if (hit.collider.CompareTag("enter") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Enterkey");
                }
            }

            // Elevator

            if (hit.collider.CompareTag("call") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Call");
                }
            }

            if (hit.collider.CompareTag("up") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Above");
                }
            }

            if (hit.collider.CompareTag("down") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown("f"))
                {
                    hit.collider.SendMessage("Below");
                }

                // Big Arse Button
                if (hit.collider.CompareTag("BAB") && distance < pickupdistance)
                {
                    pickuptext.enabled = true;
                    if (Input.GetKeyDown("f"))
                    {
                        hit.collider.SendMessage("Game_Over");
                    }
                }
            }
        }
    }
}
