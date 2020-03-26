//
//  CKRecordZoneNotification.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKRecordZoneNotification.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties

void* CKRecordZoneNotification_GetPropRecordZoneID(void* ptr)
{
	CKRecordZoneNotification* iCKRecordZoneNotification = (__bridge CKRecordZoneNotification*) ptr;
	CKRecordZoneID* val = [iCKRecordZoneNotification recordZoneID];
	return (__bridge_retained void*) val;
}

long CKRecordZoneNotification_GetPropDatabaseScope(void* ptr)
{
	CKRecordZoneNotification* iCKRecordZoneNotification = (__bridge CKRecordZoneNotification*) ptr;
	CKDatabaseScope val = [iCKRecordZoneNotification databaseScope];
	return val;
}


void CKRecordZoneNotification_Dispose(void* ptr)
{
    CKRecordZoneNotification* val = (__bridge CKRecordZoneNotification*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKRecordZoneNotification");
}

}
