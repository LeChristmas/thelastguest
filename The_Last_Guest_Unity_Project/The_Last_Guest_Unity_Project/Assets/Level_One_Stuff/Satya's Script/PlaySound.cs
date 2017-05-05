using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlaySound : MonoBehaviour 
{
	public AudioClip SoundToPlay;
	public float volume;
	AudioSource audio;
	public bool alreadyPlayed = false;

	// Use this for initialization
	void Start () 
	{
		audio = GetComponent<AudioSource> ();
		
	}
	
	void OnTriggerEnter()
	{
		if (!alreadyPlayed) 
		{
			audio.PlayOneShot (SoundToPlay, volume);
			alreadyPlayed = true;
		}
	}
}
