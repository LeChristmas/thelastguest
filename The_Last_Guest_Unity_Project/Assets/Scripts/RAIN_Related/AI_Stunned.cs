using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using RAIN;

public class AI_Stunned : MonoBehaviour
{

    public GameObject enemy;

    public float stuntime = 1.0f;

    private float nextstun = 0.0f;

    private bool stunned;

    // Use this for initialization
    void Start()
    {
        stunned = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (Time.time > nextstun)
        {
            stunned = false;
        }

        enemy.SetActive(!stunned);
    }

    public void Stunned()
    {
        nextstun = Time.time + stuntime;
        stunned = true;
    }

    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("bullet"))
        {
            gameObject.SendMessage("Stunned");
            Destroy(other.gameObject);
        }
    }
}