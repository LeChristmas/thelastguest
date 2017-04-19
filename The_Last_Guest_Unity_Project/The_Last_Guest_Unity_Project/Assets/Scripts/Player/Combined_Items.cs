using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Combined_Items : MonoBehaviour {

    // Activators
    public bool stun_gun_activator = false;
    public bool flash_light_activator = false;

    // General Stuff
    public GameObject stun_gun_object;
    public GameObject flash_light_object;

    public Text ammunition_text;

    public string fire_button;
    public string swap_button;

    public float ammunition = 0.0f;

    public Transform target;

    private Renderer stun_gun_renderer;
    private Renderer flash_light_renderer;

    private bool stun_gun_active;
    private bool flash_light_active;

    private int swapper;

    //Stun Gun Related
    public GameObject spawner;

    public GameObject shot;

    public float firerate = 0.5f;

    private GameObject shots;

    private float nextFire = 0.0f;

    // Flash Light Related
    public float flash_light_decay = 0.1f;

    public GameObject flash_light_light;

    private bool flash = false;

    private Light flash_light_component;

    public void Fill ()
    {
        ammunition += 100.0f;
    }

    void Start ()
    {
        stun_gun_renderer = stun_gun_object.GetComponent<Renderer>();
        flash_light_renderer = flash_light_object.GetComponent<Renderer>();

        flash_light_component = flash_light_light.GetComponent<Light>();

        stun_gun_active = false;
        flash_light_active = true;

        flash_light_renderer.enabled = false;
        stun_gun_renderer.enabled = false;

        flash_light_component.enabled = false;

        swapper = 0;
    }

    public void Flash_Activate ()
    {
        flash_light_activator = true;
        swapper = 1;
    }

    public void Stun_Activate ()
    {
        stun_gun_activator = true;
        swapper = 2;
    }

    void Update ()
    {
        ammunition_text.text = ammunition.ToString("F0");

        spawner.transform.LookAt(target);
        flash_light_light.transform.LookAt(target);

        if(flash_light_activator && stun_gun_activator)
        {
            if (Input.GetKeyDown(swap_button))
            {
                swapper++;
            }
        }

        switch(swapper)
        {
            case 1:
                stun_gun_active = false;
                flash_light_active = true;

                flash_light_renderer.enabled = true;
                stun_gun_renderer.enabled = false;
                break;

            case 2:
                flash = false;

                stun_gun_active = true;
                flash_light_active = false;

                flash_light_renderer.enabled = false;
                stun_gun_renderer.enabled = true;
                break;
            case 3:
                swapper = 1;
                break;
        }

        // Flash Light Fire
        if (Input.GetKeyDown(fire_button) && flash_light_active && ammunition > 0.0f)
        {
            flash = !flash;
        }

        if (ammunition == 0.0f)
        {
            flash = false;
        }

        if (ammunition < 0.0f)
        {
            flash = false;
        }

        if(flash)
        {
            flash_light_component.enabled = true;
            ammunition -= 1.0f * flash_light_decay;
        }

        if(!flash)
        {
            flash_light_component.enabled = false;
        }

        // Stun Gun Fire
        if(Input.GetKeyDown(fire_button) && stun_gun_active && ammunition > 99.9f)
        {
            if(Time.time > nextFire)
            {
                ammunition -= 100.0f;
                nextFire = Time.time + firerate;
                shots = Instantiate(shot, spawner.transform.position, spawner.transform.rotation);
            }
        }
    }
}
