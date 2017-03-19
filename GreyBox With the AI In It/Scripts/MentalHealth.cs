using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityStandardAssets.ImageEffects;
using UnityEngine.SceneManagement;

public class MentalHealth : MonoBehaviour {

    public GameObject cam;

    public Text inventory;

    public float enemyonedam = 0.005f;
    public float enemytwodam = 0.005f;
    public float enemythreedam = 0.1f;
    public float enemyfourdam = 0.1f;

    public float healthpickup = 0.25f;
    public float healthpack = 0.5f;

    public float bodies = 0.001f;

    public string levelname;

    private float h;
    private float hh;

    private int packs = 0;

    private float vignette;

	// Use this for initialization
	void Start ()
    {
        hh = 0.0f;
        h = Mathf.Clamp(hh, 0, 1);
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

        if(h >= 1)
        {
            SceneManager.LoadScene(levelname);
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
        h += bodies;
        Debug.Log("Boo");
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
