using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class Key_Binding : MonoBehaviour {

    public Dictionary<string, KeyCode> keys = new Dictionary<string, KeyCode>();

    public Text up, down, left, right, crouch, sprint, fire, swap, heal, interact;

    private GameObject current_key;

    // control access
    private GameObject movement_gameobject;
    private Movement movement_script;

    private GameObject mouse_gameobject;
    private Combined_Items mouse_script;

    private GameObject healing_gameobject;
    private Mental_Health healing_script;

    private GameObject interact_gameobject;
    private Pickup_Script interact_script;

	// Use this for initialization
	void Start ()
    {
        movement_gameobject = GameObject.Find("Player");
        movement_script = movement_gameobject.GetComponent<Movement>();
        mouse_gameobject = GameObject.Find("Items");
        mouse_script = mouse_gameobject.GetComponent<Combined_Items>();
        healing_gameobject = GameObject.Find("Health_Bar");
        healing_script = healing_gameobject.GetComponent<Mental_Health>();
        interact_gameobject = GameObject.Find("Player_Camera");
        interact_script = interact_gameobject.GetComponent<Pickup_Script>();

        keys.Add("Up_Button", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Up_Button", "W")));
        keys.Add("Down_Button", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Down_Button", "S")));
        keys.Add("Left_Button", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Left_Button", "A")));
        keys.Add("Right_Button", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Right_Button", "D")));
        keys.Add("Crouch_Button", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Crouch_Button", "C")));
        keys.Add("Sprint_Button", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Sprint_Button", "V")));
        keys.Add("Fire_Button", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Fire_Button", "Mouse0")));
        keys.Add("Swap_Button", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Swap_Button", "Mouse1")));
        keys.Add("Heal_Button", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Heal_Button", "E")));
        keys.Add("Interact_Button", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Interact_Button", "F")));
    }

    void Update ()
    {
        up.text = keys["Up_Button"].ToString();
        down.text = keys["Down_Button"].ToString();
        left.text = keys["Left_Button"].ToString();
        right.text = keys["Right_Button"].ToString();
        crouch.text = keys["Crouch_Button"].ToString();
        sprint.text = keys["Sprint_Button"].ToString();
        fire.text = keys["Fire_Button"].ToString();
        swap.text = keys["Swap_Button"].ToString();
        heal.text = keys["Heal_Button"].ToString();
        interact.text = keys["Interact_Button"].ToString();

        movement_script.up = keys["Up_Button"];
        movement_script.down = keys["Down_Button"];
        movement_script.left = keys["Left_Button"];
        movement_script.right = keys["Right_Button"];
        movement_script.crouch = keys["Crouch_Button"];
        movement_script.sprint = keys["Sprint_Button"];
        mouse_script.fire_button = keys["Fire_Button"];
        mouse_script.swap_button = keys["Swap_Button"];
        healing_script.heal_button = keys["Heal_Button"];
        interact_script.interact_button = keys["Interact_Button"];

    }

    public void OnGUI ()
    {
        if(current_key != null)
        {
            Event e = Event.current;
            if(e.isKey)
            {
                keys[current_key.name] = e.keyCode;
                current_key.transform.GetChild(0).GetComponent<Text>().text = e.keyCode.ToString();
                current_key = null;
            }
        }
    }

    public void ChangeKey (GameObject clicked)
    {
        current_key = clicked;
    }

    public void SaveKeys ()
    {
        Debug.Log("saved");

        foreach (var key in keys)
        {
            PlayerPrefs.SetString(key.Key, key.Value.ToString());
        }

        PlayerPrefs.Save();
    }

    public void On_Click_Default ()
    {
        keys["Up_Button"] = KeyCode.W;
        keys["Down_Button"] = KeyCode.S;
        keys["Left_Button"] = KeyCode.A;
        keys["Right_Button"] = KeyCode.D;
        keys["Crouch_Button"] = KeyCode.C;
        keys["Sprint_Button"] = KeyCode.V;
        keys["Fire_Button"] = KeyCode.Mouse0;
        keys["Swap_Button"] = KeyCode.Mouse1;
        keys["Heal_Button"] = KeyCode.E;
        keys["Interact_Button"] = KeyCode.F;

        PlayerPrefs.Save();
    }
}
