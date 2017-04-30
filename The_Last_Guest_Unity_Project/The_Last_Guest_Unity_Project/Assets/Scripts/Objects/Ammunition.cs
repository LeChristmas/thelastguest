using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ammunition : MonoBehaviour {

    public float pick_up_distance = 3.0f;

    private GameObject player;
    private Transform player_transform;

    private GameObject switcher;

	// Use this for initialization
	void Start ()
    {
        player = GameObject.Find("Player_Camera");
        player_transform = player.GetComponent<Transform>();

        switcher = GameObject.Find("Items");
        switcher.GetComponent<Combined_Items>();
	}

    void Update ()
    {
        Vector3 target_distance = player_transform.position - transform.position;
        float distance = Vector3.Distance(target_distance, transform.forward);

        if (distance < pick_up_distance)
        {
            switcher.SendMessage("Fill");
            Destroy(gameObject);
        }
    }
}
