using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ammunition : MonoBehaviour {

    private GameObject switcher;

	// Use this for initialization
	void Start ()
    {
        switcher = GameObject.Find("Items");

        switcher.GetComponent<Combined_Items>();
	}

    public void Ammo()
    {
        switcher.SendMessage("Fill");

        Destroy(gameObject);
    }
}
