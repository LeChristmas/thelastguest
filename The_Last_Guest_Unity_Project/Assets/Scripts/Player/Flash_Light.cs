using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Flash_Light : MonoBehaviour {

    public Switcher switcher;
    public Stun_Gun stun_gun;

    public GameObject flash_light_gameobject;

    public float flash_light_decay = 0.1f;

    public string firebutton;

    private float ammunition = 0.0f;

    private bool flash = false;

    private Light flash_light_component;

    private bool stun_gun_active = false;
    private bool flash_light_active = true;

    void Start ()
    {
        flash_light_component = flash_light_gameobject.GetComponent<Light>();
    }

    public void Fill ()
    {
        ammunition += 100.0f;
    }

    public void StunDrain ()
    {
        ammunition -= 100;
    }

    public void StunChange ()
    {
        stun_gun_active = true;
        flash_light_active = false;
    }

    public void FlashChange ()
    {
        stun_gun_active = false;
        flash_light_active = true;
    }

    void Update ()
    {
        Debug.Log("Flash Light ammunition is " + ammunition);

        if (ammunition < 0.1f)
        {
            flash = false;
        }

        if(Input.GetKeyDown(firebutton))
        {
            if(ammunition > 0.0f)
            {
                flash = !flash;
            }
        }

        if(!flash)
        {
            flash_light_component.enabled = false;
        }
        else if(flash)
        {
            flash_light_component.enabled = true;
            ammunition -= flash_light_decay;
            switcher.FlashDrain();
            stun_gun.FlashDrain();

        }
    }
}
