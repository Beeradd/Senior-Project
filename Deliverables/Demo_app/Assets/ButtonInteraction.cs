using System.Collections;
using UnityEngine;
using MiddleVR_Unity3D;

public class ButtonInteraction : MonoBehaviour
{
    public GameObject hand_node;
    

    void Start()
    {
        hand_node = GameObject.Find("HandNode");
    }

    void Update()
    {
        MiddleVR_Buttons();
    }


    void MiddleVR_Buttons()
    {

        vrButtons buttons = null;

        if(MiddleVR.VRDeviceMgr != null)
        {
            buttons = MiddleVR.VRDeviceMgr.GetButtons("VRPNButtons1.Buttons");
        }

        if(buttons != null)
        {
            if (buttons.IsToggled(0) | Input.GetKeyDown(KeyCode.F1))
            {
                MiddleVRTools.Log("Button 0 has been pressed");
                hand_node.GetComponent<Renderer>().material.color = Color.blue;
            }
        }
    }



}
