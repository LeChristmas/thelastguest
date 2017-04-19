using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Stun_Pick_Up : MonoBehaviour
{
    public float pick_up_distance = 2.0f;

    private Gameobject player;
    private Transform player_transform;

    private Gameobject items;
    private Combined_Items activator;

    void Start ()
    {
        player = GameObject.Find("Player");
        player_transform = player.GetComponent<Transform>();

        items = Gameobject.Find("Items");
        activator = items.GetComponent<Combined_Items>();
    }

    void Update ()
    {
        vector3 trarget_distance = player_transform.postion - player_transform.position;
        float distance = Vector3.distance(target_distance, foransform.forward);
    }

        if (distance<dis)
        {
            activator.Stun_Activate();
}
}
