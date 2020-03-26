//
//  CKQueryNotification.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKQueryNotification.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties

long CKQueryNotification_GetPropDatabaseScope(void* ptr)
{
	CKQueryNotification* iCKQueryNotification = (__bridge CKQueryNotification*) ptr;
	CKDatabaseScope val = [iCKQueryNotification databaseScope];
	return val;
}

long CKQueryNotification_GetPropQueryNotificationReason(void* ptr)
{
	CKQueryNotification* iCKQueryNotification = (__bridge CKQueryNotification*) ptr;
	CKQueryNotificationReason val = [iCKQueryNotification queryNotificationReason];
	return val;
}

void* CKQueryNotification_GetPropRecordID(void* ptr)
{
	CKQueryNotification* iCKQueryNotification = (__bridge CKQueryNotification*) ptr;
	CKRecordID* val = [iCKQueryNotification recordID];
	return (__bridge_retained void*) val;
}


void CKQueryNotification_Dispose(void* ptr)
{
    CKQueryNotification* val = (__bridge CKQueryNotification*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKQueryNotification");
}

}
