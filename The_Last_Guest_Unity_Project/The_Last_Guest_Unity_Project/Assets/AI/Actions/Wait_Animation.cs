using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using RAIN.Action;
using RAIN.Core;

[RAINAction]
public class Wait_Animation : RAINAction
{

    private Wait_Ani wait;

    public override void Start(RAIN.Core.AI ai)
    {
        base.Start(ai);
        wait = ai.Body.GetComponent<Wait_Ani>();
    }

    public override ActionResult Execute(RAIN.Core.AI ai)
    {
        wait.Wait();
        return ActionResult.SUCCESS;
    }

    public override void Stop(RAIN.Core.AI ai)
    {
        base.Stop(ai);
    }
}