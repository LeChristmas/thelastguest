using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class Instruction_Manager : MonoBehaviour
{
    public void LoadScene(string Instructions)
    {
        SceneManager.LoadScene(Instructions);
    }
}

   