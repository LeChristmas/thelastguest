using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StunGun : MonoBehaviour {

    public string firebutton;

    public GameObject spawner;

    public GameObject shot;

    public Transform target;

    public float firerate = 0.5f;

    public Text ammotext;

    private int ammunition = 0;

    private GameObject shots;

    private float nextFire = 0.0f;

    // Use this for initialization
    void Start ()
    {

	}

    public void Fill()
    {
        ammunition++;
    }
	
	// Update is called once per frame
	void Update ()
    {
        ammotext.text = ammunition.ToString();

        spawner.transform.LookAt(target);

		if(Input.GetKeyDown(firebutton))
        {
            if(Time.time > nextFire && ammunition > 0)
            {
                ammunition--;
                nextFire = Time.time + firerate;
                shots = Instantiate(shot, spawner.transform.position, spawner.transform.rotation);
            }
        }
	}
}
