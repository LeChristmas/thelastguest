using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Main : MonoBehaviour {

    public GameObject lightone;
    public GameObject lighttwo;
    public GameObject lightthree;
    public GameObject lightfour;

    public int numone;
    public int numtwo;
    public int numthree;
    public int numfour;

    public string nextlevel;

    private int lights = 1;

    private Renderer rendone;
    private Renderer rendtwo;
    private Renderer rendthree;
    private Renderer rendfour;

    private bool one = false;
    private bool two = false;
    private bool three = false;
    private bool four = false;

    private bool set = false;


    // Use this for initialization
    void Start ()
    {
        rendone = lightone.GetComponent<Renderer>();
        rendtwo = lighttwo.GetComponent<Renderer>();
        rendthree = lightthree.GetComponent<Renderer>();
        rendfour = lightfour.GetComponent<Renderer>();
    }
	
	// Update is called once per frame
	void Update ()
    {
		switch(lights)
        {
            case 0:
                rendone.material.color = Color.green;
                rendtwo.material.color = Color.green;
                rendthree.material.color = Color.green;
                rendfour.material.color = Color.green;
                break;

            case 1:

                rendone.material.color = Color.white;
                rendtwo.material.color = Color.white;
                rendthree.material.color = Color.white;
                rendfour.material.color = Color.white;
                break;

            case 2:
                rendone.material.color = Color.red;
                break;

            case 3:
                rendtwo.material.color = Color.red;
                break;

            case 4:
                rendthree.material.color = Color.red;
                break;

            case 5:
                rendfour.material.color = Color.red;
                break;
        }

        if(lights > 5 && lights > 0)
        {
            lights = 1;
        }
	}

    public void One()
    {
        if(lights < 5 && lights > 0)
        {
            lights++;
        }

        if(numone == 1)
        {
            one = true;
        }

        if (numtwo == 1 && one)
        {
            two = true;
        }

        if(numthree == 1 && one && two)
        {
            three = true;
        }

        if(numfour == 1 && one && two && three)
        {
            four = true;
        }
    }

    public void Two()
    {
        if (lights < 5 && lights > 0)
        {
            lights++;
        }

        if (numone == 2)
        {
            one = true;
        }

        if (numtwo == 2 && one)
        {
            two = true;
        }

        if (numthree == 2 && one && two)
        {
            three = true;
        }

        if (numfour == 2 && one && two && three)
        {
            four = true;
        }
    }

    public void Three()
    {
        if (lights < 5 && lights > 0)
        {
            lights++;
        }

        if (numone == 3)
        {
            one = true;
        }

        if (numtwo == 3 && one)
        {
            two = true;
        }

        if (numthree == 3 && one && two)
        {
            three = true;
        }

        if (numfour == 3 && one && two && three)
        {
            four = true;
        }
    }

    public void Four()
    {
        if (lights < 5 && lights > 0)
        {
            lights++;
        }

        if (numone == 4)
        {
            one = true;
        }

        if (numtwo == 4 && one)
        {
            two = true;
        }

        if (numthree == 4 && one && two)
        {
            three = true;
        }

        if (numfour == 4 && one && two && three)
        {
            four = true;
        }
    }

    public void Five()
    {
        if (lights < 5 && lights > 0)
        {
            lights++;
        }

        if (numone == 5)
        {
            one = true;
        }

        if (numtwo == 5 && one)
        {
            two = true;
        }

        if (numthree == 5 && one && two)
        {
            three = true;
        }

        if (numfour == 5 && one && two && three)
        {
            four = true;
        }
    }

    public void Six()
    {
        if (lights < 5 && lights > 0)
        {
            lights++;
        }

        if (numone == 6)
        {
            one = true;
        }

        if (numtwo == 6 && one)
        {
            two = true;
        }

        if (numthree == 6 && one && two)
        {
            three = true;
        }

        if (numfour == 6 && one && two && three)
        {
            four = true;
        }
    }

    public void Seven()
    {
        if (lights < 5 && lights > 0)
        {
            lights++;
        }

        if (numone == 7)
        {
            one = true;
        }

        if (numtwo == 7 && one)
        {
            two = true;
        }

        if (numthree == 7 && one && two)
        {
            three = true;
        }

        if (numfour == 7 && one && two && three)
        {
            four = true;
        }
    }

    public void Eight()
    {
        if (lights < 5 && lights > 0)
        {
            lights++;
        }

        if (numone == 8)
        {
            one = true;
        }

        if (numtwo == 8 && one)
        {
            two = true;
        }

        if (numthree == 8 && one && two)
        {
            three = true;
        }

        if (numfour == 8 && one && two && three)
        {
            four = true;
        }
    }

    public void Nine()
    {
        if (lights < 5 && lights > 0)
        {
            lights++;
        }

        if (numone == 9)
        {
            one = true;
        }

        if (numtwo == 9 && one)
        {
            two = true;
        }

        if (numthree == 9 && one && two)
        {
            three = true;
        }

        if (numfour == 9 && one && two && three)
        {
            four = true;
        }
    }

    public void Zero()
    {
        if (lights < 5 && lights > 0)
        {
            lights++;
        }

        if (numfour == 0 && one && two && three)
        {
            four = true;
        }

        if (numthree == 0 && one && two)
        {
            three = true;
        }

        if (numtwo == 0 && one)
        {
            two = true;
        }

        if (numone == 0)
        {
            one = true;
        }
    }

    public void Clear()
    {
        if(!set)
        {
            lights = 1;

            one = false;
            two = false;
            three = false;
            four = false;
        }
    }

    public void Enter()
    {
        if(one && two && three && four)
        {
            Debug.Log("Congrats you got it");
            lights = 0;
            set = true;
            SceneManager.LoadScene(nextlevel);
        }
        else
        {
            Debug.Log("Try Again");
            lights = 1;
        }
    }
}
