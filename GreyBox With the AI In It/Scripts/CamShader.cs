using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.ImageEffects;

public class CamShader : MonoBehaviour {

    public GameObject cam;

    public float vignette;

	// Use this for initialization
	void Start ()
    {

	}
	
	// Update is called once per frame
	void Update ()
    {
        cam.GetComponent<VignetteAndChromaticAberration>().intensity = vignette;

        if(cam.GetComponent<VignetteAndChromaticAberration>() == null)
        {
            Debug.Log("Shit");
        }

        if(Input.GetKeyDown("o"))
        {
            vignette += 0.1f;
        }

        if(Input.GetKeyDown("i"))
        {
            vignette -= 0.1f;
        }
    }
}
