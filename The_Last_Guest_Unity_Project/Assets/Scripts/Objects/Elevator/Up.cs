using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Up : MonoBehaviour {

    public GameObject elevatormain;
    private Elevator_Main elemain;

	// Use this for initialization
	void Start ()
    {
        elemain = elevatormain.GetComponent<Elevator_Main>();
	}

    public void Above()
    {
        elemain.Above();
    }
}
