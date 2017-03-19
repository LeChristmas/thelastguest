using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Pauser : MonoBehaviour {

    public GameObject player;

    public GameObject pausemenu;
    public GameObject hud;

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
                    pausemenu.SetActive(false);
                    hud.SetActive(true);
                    break;
                }
            case 2:
                {
                    rb.velocity = Vector3.zero;
                    Time.timeScale = 0.0f;
                    Cursor.lockState = menuMode;
                    Cursor.visible = true;
                    sc.SendMessage("Paused");
                    pausemenu.SetActive(true);
                    hud.SetActive(false);
                    break;
                }
        }
    }

    public void UnPause()
    {
        paused++;
    }
}
