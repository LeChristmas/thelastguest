using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Wait_Ani : MonoBehaviour {

    public Animator waitanimation;

    public void Wait()
    {
        waitanimation.Play("Wait", -1, 0f);
        Debug.Log("howdy");
    }

}
