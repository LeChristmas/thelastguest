﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enter : MonoBehaviour {

    private GameObject keypad;
    private Main main;

    // Use this for initialization
    void Start()
    {
        keypad = GameObject.Find("Key_Pad");
        main = keypad.GetComponent<Main>();
    }

    public void Enterkey()
    {
        main.Enter();
    }
}