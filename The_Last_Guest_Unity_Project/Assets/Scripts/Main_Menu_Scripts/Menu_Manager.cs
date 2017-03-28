using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class Menu_Manager : MonoBehaviour 
{
	public void LoadScene (string Instructions)
	{
		SceneManager.LoadScene (Instructions);
	}

	public void QuitPressed ()
	{
		Application.Quit ();
	}
}
