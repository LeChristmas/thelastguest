using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Pauser : MonoBehaviour {

    public GameObject player;

    //public GameObject pausemenu;
    //public GameObject hud;

    public GameObject reticule;
    public GameObject health_bar;
    public GameObject ammo;
    public GameObject ammo_text;
    public GameObject pack;
    public GameObject pack_text;
    public GameObject pick_up;
    public GameObject sprint;

    public GameObject resume;
    public GameObject instructions;
    public GameObject menu;

    private Rigidbody rb;

    private Movement sc;

    private int paused = 1;

    private CursorLockMode lockedMode = CursorLockMode.Locked;
    private CursorLockMode menuMode = CursorLockMode.None;

    // Use this for initialization
    void Start ()
    {
        rb = player.gameObject.GetComponent<Rigidbody>();
        sc = player.gameObject.GetComponent<Movement>();
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (Input.GetKeyDown("p"))
        {
            paused++;
        }

        if (paused == 3)
        {
            paused = 1;
        }

        switch (paused)
        {
            case 1:
                {
                    Time.timeScale = 1.0f;
                    Cursor.lockState = lockedMode;
                    Cursor.visible = false;
                    sc.SendMessage("UnPaused");
                    //pausemenu.SetActive(false);
                    //hud.SetActive(true);

                    reticule.SetActive(true);
                    health_bar.SetActive(true);
                    ammo.SetActive(true);
                    ammo_text.SetActive(true);
                    pack.SetActive(true);
                    pack_text.SetActive(true);
                    pick_up.SetActive(true);
                    sprint.SetActive(true);

                    resume.SetActive(false);
                    instructions.SetActive(false);
                    menu.SetActive(false);
                    break;
                }
            case 2:
                {
                    rb.velocity = Vector3.zero;
                    Time.timeScale = 0.0f;
                    Cursor.lockState = menuMode;
                    Cursor.visible = true;
                    sc.SendMessage("Paused");
                    //pausemenu.SetActive(true);
                    //hud.SetActive(false);

                    reticule.SetActive(false);
                    health_bar.SetActive(false);
                    ammo.SetActive(false);
                    ammo_text.SetActive(false);
                    pack.SetActive(false);
                    pack_text.SetActive(false);
                    pick_up.SetActive(false);
                    sprint.SetActive(false);

                    resume.SetActive(true);
                    instructions.SetActive(true);
                    menu.SetActive(true);
                    break;
                }
        }
    }

    public void UnPause()
    {
        paused++;
    }
}
