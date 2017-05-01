using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlickeringLight : MonoBehaviour 
{
	Light pointlight;
	public float minWaitTime;
	public float maxWaitTime;
	// Use this for initialization
	void Start () 
	{
		pointlight = GetComponent <Light> ();
		StartCoroutine (Flashing ());

	}

	IEnumerator Flashing()
	{
		while (true) 
		{
			yield return new WaitForSeconds (Random.Range (minWaitTime, maxWaitTime));
			pointlight.enabled = !pointlight.enabled;
		}
	}
	


}
