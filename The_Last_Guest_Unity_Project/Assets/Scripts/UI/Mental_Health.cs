using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityStandardAssets.ImageEffects;

public class Mental_Health : MonoBehaviour {

    public GameObject cam;

    public Text inventory;

    public float enemyonedam = 0.005f;
    public float enemytwodam = 0.1f;
    public float enemythreedam = 0.1f;
    public float enemyfourdam = 0.1f;
    public float bodydamage = 0.001f;

    public float healthpickup = 0.25f;
    public float healthpack = 0.5f;

    private float h;

    private int packs = 0;

    private float vignette;

	// Use this for initialization
	void Start ()
    {
        h = 0.0f;
    }

    void Update()
    {

        if(Input.GetKeyDown("t"))
        {
            Debug.Log("Heath is at " + h);
        }

        vignette = h;
        cam.GetComponent<VignetteAndChromaticAberration>().intensity = vignette;

        inventory.text = packs.ToString();

        if(packs > 0)
        {
            if (Input.GetKeyDown("e"))
            {
                h -= healthpack;

                packs--;
            }
        }
    }

    public void HealthDrainOne()
    {
        h += enemyonedam;
    }

    public void HealthDrainTwo()
    {
        h += enemytwodam;
    }

    public void HealthDrainThree()
    {
        h += enemythreedam;
    }

    public void HealthDrainFour()
    {
        h += enemyfourdam;
    }

    public void Bodies()
    {
        h += bodydamage;
    }

    public void HealthPick()
    {
        h -= healthpickup;
    }

    public void HealthPack()
    {
        packs++;
    }
}
