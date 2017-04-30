using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Health_Pack : MonoBehaviour {

    public float pick_up_distance = 2.5f;

    private GameObject player;
    private Transform player_transform;

    private GameObject healthbar;

    // Use this for initialization
    void Start ()
    {
        player = GameObject.Find("Player_Camera");
        player_transform = player.GetComponent<Transform>();

        healthbar = GameObject.Find("Health_Bar");
        healthbar.GetComponent<Mental_Health>();
    }
	
	// Update is called once per frame
	void Update ()
    {
        Vector3 target_distance = player_transform.position - transform.position;
        float distance = Vector3.Distance(target_distance, transform.forward);

        if (distance < pick_up_distance)
        {
            healthbar.SendMessage("HealthPack");
            Destroy(gameObject);
        }
    }
}
