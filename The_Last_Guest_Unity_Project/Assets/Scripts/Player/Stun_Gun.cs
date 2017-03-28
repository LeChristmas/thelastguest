using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Stun_Gun : MonoBehaviour {

    public Switcher switcher;
    public Flash_Light flash_light;

    public string firebutton;

    public GameObject spawner;

    public GameObject shot;

    public Transform target;

    public float firerate = 0.5f;

    public float flash_light_decay = 0.1f;

    private float ammunition = 0.0f;

    private GameObject shots;

    private float nextFire = 0.0f;

    private bool stun_gun_active = false;
    private bool flash_light_active = true;

    [Header("Particle Effect")]
    public ParticleSystem stunGunEffectPrimary;
    public ParticleSystem stunGunEffectSecondary;

    public void Fill()
    {
        ammunition += 100.0f;
    }

    public void FlashDrain ()
    {
        ammunition -= flash_light_decay;
    }

    public void StunChange()
    {
        stun_gun_active = true;
        flash_light_active = false;
    }

    public void FlashChange()
    {
        stun_gun_active = false;
        flash_light_active = true;
    }

    // Update is called once per frame
    void Update ()
    {
        spawner.transform.LookAt(target);

        if (Input.GetKeyDown(firebutton))
        {
            if (Time.time > nextFire && ammunition > 99)
            {
                ammunition -= 100;
                switcher.StunDrain();
                flash_light.StunDrain();

                nextFire = Time.time + firerate;
                shots = Instantiate(shot, spawner.transform.position, spawner.transform.rotation);

                //Stun Gun Particle System
                stunGunEffectPrimary.Play();
                stunGunEffectSecondary.Play();
                stunGunEffectPrimary.enableEmission = true;
                stunGunEffectSecondary.enableEmission = true;
            }
        }
    }
}
