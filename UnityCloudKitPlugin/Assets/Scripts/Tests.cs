using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using HovelHouse.CloudKit;
using System;

public class Tests : MonoBehaviour
{
    private CKDatabase database;

    // Start is called before the first frame update
    void Start()
    {
        //Run();
        DoSomethingBad();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void DoSomethingBad()
    {
        try
        {
            var pred = NSPredicate.PredicateWithFormat("");
            var queyr = new CKQuery("SomeType", pred);
        }
        catch(CloudKitException ex)
        {
            Debug.Log("Well i tried my best");
            Debug.LogError(ex);
        }
    }

    void Run()
    {
        //var testDisposable = new TestDisposable();

        //Debug.Log("made dispasable: " + testDisposable);

        //StartCoroutine(WaitABit());
        var op = new CKModifyRecordsOperation(null, new CKRecordID[] {
            new CKRecordID("1CB545B1-7CA3-423E-A215-67DA56578270"),
            new CKRecordID("321A8AD3-0FA9-40C3-8D76-D76328A0A7F1")
        });

        database = CKContainer.DefaultContainer().PrivateCloudDatabase;

        Debug.Log("Setting callback");
        op.ModifyRecordsCompletionBlock = (records, recordIds, error) =>
        {
            Debug.Log("Modify records done");
        };

        //Debug.Log("Setting QoS");
        op.Configuration.QualityOfService = NSQualityOfService.Default;

        database.AddOperation(op);
        
        StartCoroutine(WaitABit());
    }

    private IEnumerator WaitABit()
    {
        yield return new WaitForSecondsRealtime(1f);
        GC.Collect();
        Debug.Log("GC collected");
    }
}
