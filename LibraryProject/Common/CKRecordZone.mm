//
//  CKRecordZone.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKRecordZone.h"
#import "Converters.h"

extern "C" {

//ClassMethods
void* CKRecordZone_defaultRecordZone(
	void** exception
    )
{
	@try {
		NSLog(@"CKRecordZone_defaultRecordZone()");
	    CKRecordZone* val = [CKRecordZone defaultRecordZone];
		return (__bridge_retained void*) val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}

	return nil;
}

//InitMethods
void* CKRecordZone_initWithZoneName(
    const char* zoneName,
    void** exceptionPtr)
{
    @try 
    {
        CKRecordZone* iCKRecordZone = [[CKRecordZone alloc] initWithZoneName:[NSString stringWithUTF8String:zoneName]];
            return (__bridge_retained void*) iCKRecordZone;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKRecordZone_initWithZoneID(
    void* zoneID,
    void** exceptionPtr)
{
    @try 
    {
        CKRecordZone* iCKRecordZone = [[CKRecordZone alloc] initWithZoneID:(__bridge CKRecordZoneID*) zoneID];
            return (__bridge_retained void*) iCKRecordZone;
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

void* CKRecordZone_GetPropZoneID(void* ptr)
{
	CKRecordZone* iCKRecordZone = (__bridge CKRecordZone*) ptr;
	CKRecordZoneID* val = [iCKRecordZone zoneID];
	return (__bridge_retained void*) val;
}

long CKRecordZone_GetPropCapabilities(void* ptr)
{
	CKRecordZone* iCKRecordZone = (__bridge CKRecordZone*) ptr;
	CKRecordZoneCapabilities val = [iCKRecordZone capabilities];
	return val;
}


void CKRecordZone_Dispose(void* ptr)
{
    CKRecordZone* val = (__bridge CKRecordZone*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKRecordZone");
}

}
