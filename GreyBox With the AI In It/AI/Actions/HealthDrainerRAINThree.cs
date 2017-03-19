using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using RAIN.Action;
using RAIN.Core;

[RAINAction]
public class HealthDrainerRAINThree : RAINAction
{

    private HealthDrainer healthdrainer;

    public override void Start(RAIN.Core.AI ai)
    {
        base.Start(ai);
        healthdrainer = ai.Body.GetComponent<HealthDrainer>();
    }

    public override ActionResult Execute(RAIN.Core.AI ai)
    {
        healthdrainer.DrainThree();
        return ActionResult.SUCCESS;
    }

    public override void Stop(RAIN.Core.AI ai)
    {
        base.Stop(ai);
    }
}