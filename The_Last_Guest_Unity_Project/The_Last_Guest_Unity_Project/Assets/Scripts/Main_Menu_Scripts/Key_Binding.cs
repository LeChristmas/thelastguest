using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Key_Binding : MonoBehaviour {

    private Dictionary<string, KeyCode> keys = new Dictionary<string, KeyCode>();

    public Text up, down, left, right, crouch, sprint, fire, swap, heal, interact;

    private GameObject current_key;

	// Use this for initialization
	void Start ()
    {
        keys.Add("Up", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Up", "W")));
        keys.Add("Down", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Down", "S")));
        keys.Add("Left", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Left", "A")));
        keys.Add("Right", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Right", "D")));
        keys.Add("Crouch", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Crouch", "C")));
        keys.Add("Sprint", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Sprint", "V")));
        keys.Add("Fire", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Fire", "Mouse0")));
        keys.Add("Swap", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Swap", "Mouse1")));
        keys.Add("Heal", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Heal", "E")));
        keys.Add("Interact", (KeyCode)System.Enum.Parse(typeof(KeyCode), PlayerPrefs.GetString("Interact", "F")));

        up.text = keys["Up"].ToString();
        down.text = keys["Down"].ToString();
        left.text = keys["Left"].ToString();
        right.text = keys["Right"].ToString();
        crouch.text = keys["Crouch"].ToString();
        sprint.text = keys["Sprint"].ToString();
        fire.text = keys["Fire"].ToString();
        swap.text = keys["Swap"].ToString();
        heal.text = keys["Heal"].ToString();
        interact.text = keys["Interact"].ToString();

    }
	
	// Update is called once per frame
	void Update () {
		
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
}
