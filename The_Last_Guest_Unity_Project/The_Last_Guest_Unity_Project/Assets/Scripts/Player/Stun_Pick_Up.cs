using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stun_Pick_Up : MonoBehaviour
{
    public float pick_up_distance = 2.5f;

    private GameObject player;
    private Transform player_transform;

    private GameObject items;
    private Combined_Items activator;

    void Start()
    {
        player = GameObject.Find("Player_Camera");
        player_transform = player.GetComponent<Transform>();

        items = GameObject.Find("Items");
        activator = items.GetComponent<Combined_Items>();
    }

    void Update()
    {
        Vector3 target_distance = player_transform.position - transform.position;
        float distance = Vector3.Distance(target_distance, transform.forward);

        if (distance < pick_up_distance)
        {
            activator.Stun_Activate();
            Destroy(gameObject);
        }
    }
}
