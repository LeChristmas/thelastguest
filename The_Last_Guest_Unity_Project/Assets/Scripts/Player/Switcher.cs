using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Switcher : MonoBehaviour {

    public GameObject stun_gun_object;
    public GameObject flash_light_object;

    public Text ammunition_text;

    public float flash_light_decay = 0.1f;

    public string swap_button;

    private float ammunition = 0.0f;

    private bool stun_gun_active = false;
    private bool flash_light_active = true;

    private Stun_Gun stun_gun;
    private Flash_Light flash_light;

    private Renderer stun_gun_renderer;
    private Renderer flash_light_renderer;

    void Start ()
    {
        stun_gun = stun_gun_object.GetComponent<Stun_Gun>();
        flash_light = flash_light_object.GetComponent<Flash_Light>();

        stun_gun_renderer = stun_gun_object.GetComponent<Renderer>();
        flash_light_renderer = flash_light_object.GetComponent<Renderer>();

        flash_light_renderer.enabled = true;
        stun_gun_renderer.enabled = false;
    }

    public void Fill ()
    {
        ammunition += 100.0f;
        stun_gun.Fill();
        flash_light.Fill();
    }

    public void StunDrain ()
    {
        ammunition -= 100;
    }

    public void FlashDrain ()
    {
        ammunition -= flash_light_decay;
    }

    void Update ()
    {
        Debug.Log("Switcher ammunition is " + ammunition);

        ammunition_text.text = ammunition.ToString();

        if(Input.GetKeyDown(swap_button) && flash_light_active)
        {
            stun_gun_active = true;
            flash_light_active = false;

            flash_light_renderer.enabled = false;
            stun_gun_renderer.enabled = true;

            stun_gun.StunChange();
            flash_light.StunChange();
        }

        if(Input.GetKeyDown(swap_button) && stun_gun_active)
        {
            stun_gun_active = false;
            flash_light_active = true;

            flash_light_renderer.enabled = true;
            stun_gun_renderer.enabled = false;

            stun_gun.FlashChange();
            flash_light.FlashChange();
        }
    }
}
