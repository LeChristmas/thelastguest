using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Pickup_Script : MonoBehaviour
{

    Camera cam;

    public Text pickuptext;

    public KeyCode interact_button;

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

            //Keypad

            if (hit.collider.CompareTag("one") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown(interact_button))
                {
                    hit.collider.SendMessage("Onekey");
                }
            }

            if (hit.collider.CompareTag("two") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown(interact_button))
                {
                    hit.collider.SendMessage("Twokey");
                }
            }

            if (hit.collider.CompareTag("three") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown(interact_button))
                {
                    hit.collider.SendMessage("Threekey");
                }
            }

            if (hit.collider.CompareTag("four") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown(interact_button))
                {
                    hit.collider.SendMessage("Fourkey");
                }
            }

            if (hit.collider.CompareTag("five") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown(interact_button))
                {
                    hit.collider.SendMessage("Fivekey");
                }
            }

            if (hit.collider.CompareTag("six") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown(interact_button))
                {
                    hit.collider.SendMessage("Sixkey");
                }
            }

            if (hit.collider.CompareTag("seven") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown(interact_button))
                {
                    hit.collider.SendMessage("Sevenkey");
                }
            }

            if (hit.collider.CompareTag("eight") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown(interact_button))
                {
                    hit.collider.SendMessage("Eightkey");
                }
            }

            if (hit.collider.CompareTag("nine") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown(interact_button))
                {
                    hit.collider.SendMessage("Ninekey");
                }
            }

            if (hit.collider.CompareTag("zero") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown(interact_button))
                {
                    hit.collider.SendMessage("Zerokey");
                }
            }

            if (hit.collider.CompareTag("clear") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown(interact_button))
                {
                    hit.collider.SendMessage("Clearkey");
                }
            }

            if (hit.collider.CompareTag("enter") && distance < pickupdistance)
            {
                pickuptext.enabled = true;
                if (Input.GetKeyDown(interact_button))
                {
                    hit.collider.SendMessage("Enterkey");
                }
            }

                // Big Arse Button
                if (hit.collider.CompareTag("BAB") && distance < pickupdistance)
                {
                    pickuptext.enabled = true;
                    if (Input.GetKeyDown(interact_button))
                    {
                        hit.collider.SendMessage("Game_Over");
                    }
                }
            }
    }
}
