//
//  CKRecordID.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKRecordID.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKRecordID_initWithRecordName(
    const char* recordName,
    void** exceptionPtr)
{
    @try 
    {
        CKRecordID* iCKRecordID = [[CKRecordID alloc] initWithRecordName:[NSString stringWithUTF8String:recordName]];
            return (__bridge_retained void*) iCKRecordID;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKRecordID_initWithRecordName_zoneID(
    const char* recordName,
    void* zoneID,
    void** exceptionPtr)
{
    @try 
    {
        CKRecordID* iCKRecordID = [[CKRecordID alloc] initWithRecordName:[NSString stringWithUTF8String:recordName] zoneID:(__bridge CKRecordZoneID*) zoneID];
            return (__bridge_retained void*) iCKRecordID;
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

const char* CKRecordID_GetPropRecordName(void* ptr)
{
	CKRecordID* iCKRecordID = (__bridge CKRecordID*) ptr;
	NSString* val = [iCKRecordID recordName];
	return [val UTF8String];
}

void* CKRecordID_GetPropZoneID(void* ptr)
{
	CKRecordID* iCKRecordID = (__bridge CKRecordID*) ptr;
	CKRecordZoneID* val = [iCKRecordID zoneID];
	return (__bridge_retained void*) val;
}


void CKRecordID_Dispose(void* ptr)
{
    CKRecordID* val = (__bridge CKRecordID*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKRecordID");
}

}
