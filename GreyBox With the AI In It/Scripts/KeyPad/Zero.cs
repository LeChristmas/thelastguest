using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Zero : MonoBehaviour {

    private GameObject keypad;
    private Main main;

    // Use this for initialization
    void Start()
    {
        keypad = GameObject.Find("KeyPad");
        main = keypad.GetComponent<Main>();
    }

    public void Zerokey()
    {
        main.Zero();
    }
}