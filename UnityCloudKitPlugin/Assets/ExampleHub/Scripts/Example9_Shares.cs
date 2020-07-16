using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using HovelHouse.CloudKit;
using System;

public class Example9_Shares : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        CKContainer.DefaultContainer().DiscoverUserIdentityWithEmailAddress("jonathanculp@gmail.com", OnUserIdentityDiscovered);
    }

    private void OnUserIdentityDiscovered(CKUserIdentity arg1, NSError arg2)
    {
        Debug.Log("User Identity Discovered");
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
