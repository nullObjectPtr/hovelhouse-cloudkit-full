//
//  CKRecordZoneID.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKRecordZoneID.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKRecordZoneID_initWithZoneName_ownerName(
    const char* zoneName,
    const char* ownerName,
    void** exceptionPtr)
{
    @try 
    {
        CKRecordZoneID* iCKRecordZoneID = [[CKRecordZoneID alloc] initWithZoneName:[NSString stringWithUTF8String:zoneName] ownerName:[NSString stringWithUTF8String:ownerName]];
            return (__bridge_retained void*) iCKRecordZoneID;
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

const char* CKRecordZoneID_GetPropZoneName(void* ptr)
{
	CKRecordZoneID* iCKRecordZoneID = (__bridge CKRecordZoneID*) ptr;
	NSString* val = [iCKRecordZoneID zoneName];
	return [val UTF8String];
}

const char* CKRecordZoneID_GetPropOwnerName(void* ptr)
{
	CKRecordZoneID* iCKRecordZoneID = (__bridge CKRecordZoneID*) ptr;
	NSString* val = [iCKRecordZoneID ownerName];
	return [val UTF8String];
}


void CKRecordZoneID_Dispose(void* ptr)
{
    CKRecordZoneID* val = (__bridge CKRecordZoneID*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKRecordZoneID");
}

}
