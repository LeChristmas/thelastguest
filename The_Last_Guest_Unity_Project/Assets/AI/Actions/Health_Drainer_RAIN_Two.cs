using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using RAIN.Action;
using RAIN.Core;

[RAINAction]
public class Health_Drainer_RAIN_Two : RAINAction
{

    private Health_Drainer healthdrainer;

    public override void Start(RAIN.Core.AI ai)
    {
        base.Start(ai);
        healthdrainer = ai.Body.GetComponent<Health_Drainer>();
    }

    public override ActionResult Execute(RAIN.Core.AI ai)
    {
        healthdrainer.DrainTwo();
        return ActionResult.SUCCESS;
    }

    public override void Stop(RAIN.Core.AI ai)
    {
        base.Stop(ai);
    }
}