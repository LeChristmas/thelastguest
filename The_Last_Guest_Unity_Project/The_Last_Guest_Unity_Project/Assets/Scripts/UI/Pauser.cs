using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Pauser : MonoBehaviour {

    public GameObject player;

    public GameObject hud;
    public GameObject pause_menu;
    public GameObject info;
    public GameObject game_over;

    private bool info_active = false;

    private Rigidbody rigid_body;

    private Movement movement_script;

    private int paused = 1;

    private CursorLockMode lockedMode = CursorLockMode.Locked;
    private CursorLockMode menuMode = CursorLockMode.None;

    // Use this for initialization
    void Start ()
    {
        rigid_body = player.gameObject.GetComponent<Rigidbody>();
        movement_script = player.gameObject.GetComponent<Movement>();

        hud.SetActive(true);
        pause_menu.SetActive(false);
        info.SetActive(false);
        game_over.SetActive(false);
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
                    movement_script.UnPaused();
                    info_active = false;

                    hud.SetActive(true);
                    pause_menu.SetActive(false);
                    info.SetActive(false);

                    break;
                }
            case 2:
                {
                    rigid_body.velocity = Vector3.zero;
                    Time.timeScale = 0.0f;
                    Cursor.lockState = menuMode;
                    Cursor.visible = true;
                    movement_script.Paused();

                    if(!info_active)
                    {
                        hud.SetActive(false);
                        pause_menu.SetActive(true);
                        info.SetActive(false);
                    }

                    if(info_active)
                    {
                        hud.SetActive(false);
                        pause_menu.SetActive(false);
                        info.SetActive(true);
                    }

                    break;
                }
            case 3:
                {
                    //nothing
                    break;
                }
            case 4:
                {
                    rigid_body.velocity = Vector3.zero;
                    Time.timeScale = 0.0f;
                    Cursor.lockState = menuMode;
                    Cursor.visible = true;
                    movement_script.Paused();

                    hud.SetActive(false);
                    pause_menu.SetActive(false);
                    info.SetActive(false);
                    game_over.SetActive(true);
                    break;
                }
        }
    }

    public void Info ()
    {
        info_active = !info_active;
    }

    public void UnPause()
    {
        paused++;
    }

    public void Game_Over ()
    {
        paused = 4;
    }
}
