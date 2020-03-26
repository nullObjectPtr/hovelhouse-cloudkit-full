//
//  CKReference.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKReference.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKReference_initWithRecordID_action(
    void* recordID,
    long action,
    void** exceptionPtr)
{
    @try 
    {
        CKReference* iCKReference = [[CKReference alloc] initWithRecordID:(__bridge CKRecordID*) recordID action:(CKReferenceAction)action];
            return (__bridge_retained void*) iCKReference;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKReference_initWithRecord_action(
    void* record,
    long action,
    void** exceptionPtr)
{
    @try 
    {
        CKReference* iCKReference = [[CKReference alloc] initWithRecord:(__bridge CKRecord*) record action:(CKReferenceAction)action];
            return (__bridge_retained void*) iCKReference;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

//InstanceMethods
//VoidMethods
//Properties

long CKReference_GetPropReferenceAction(void* ptr)
{
	CKReference* iCKReference = (__bridge CKReference*) ptr;
	CKReferenceAction val = [iCKReference referenceAction];
	return val;
}

void* CKReference_GetPropRecordID(void* ptr)
{
	CKReference* iCKReference = (__bridge CKReference*) ptr;
	CKRecordID* val = [iCKReference recordID];
	return (__bridge_retained void*) val;
}


void CKReference_Dispose(void* ptr)
{
    CKReference* val = (__bridge CKReference*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKReference");
}

}
