using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityStandardAssets.ImageEffects;
using UnityEngine.SceneManagement;

public class Mental_Health : MonoBehaviour {

    public KeyCode heal_button;

    public GameObject cam;

    public Text inventory;

    public GameObject gui_gameobject;

    public float enemyonedam = 0.00375f;
    public float enemytwodam = 0.00375f;
    public float enemythreedam = 0.00375f;
    public float enemyfourdam = 0.00375f;
    public float bodydamage = 0.00075f;

    public float healthpack = 0.25f;

    public string levelname;

    private float h;

    private int packs = 0;

    private float vignette;

    private Pauser gui_script;

	// Use this for initialization
	void Start ()
    {
        h = 0.0f;

        gui_script = gui_gameobject.GetComponent<Pauser>();

    }

    void Update()
    {

        if(h >= 0.75f)
        {
            gui_script.Game_Over();
        }

        if(Input.GetKeyDown("t"))
        {
            Debug.Log("Heath is at " + h);
        }

        vignette = h;
        cam.GetComponent<VignetteAndChromaticAberration>().intensity = vignette;

        inventory.text = packs.ToString();

        if(packs > 0)
        {
            if (Input.GetKeyDown(heal_button))
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

    public void HealthPack()
    {
        packs++;
    }
}
