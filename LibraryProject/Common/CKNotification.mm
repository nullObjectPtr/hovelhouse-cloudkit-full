//
//  CKNotification.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKNotification.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties

void* CKNotification_GetPropNotificationID(void* ptr)
{
	CKNotification* iCKNotification = (__bridge CKNotification*) ptr;
	CKNotificationID* val = [iCKNotification notificationID];
	return (__bridge_retained void*) val;
}

long CKNotification_GetPropNotificationType(void* ptr)
{
	CKNotification* iCKNotification = (__bridge CKNotification*) ptr;
	CKNotificationType val = [iCKNotification notificationType];
	return val;
}

const char* CKNotification_GetPropContainerIdentifier(void* ptr)
{
	CKNotification* iCKNotification = (__bridge CKNotification*) ptr;
	NSString* val = [iCKNotification containerIdentifier];
	return [val UTF8String];
}

bool CKNotification_GetPropIsPruned(void* ptr)
{
	CKNotification* iCKNotification = (__bridge CKNotification*) ptr;
	BOOL val = [iCKNotification isPruned];
	return val;
}

const char* CKNotification_GetPropSubscriptionID(void* ptr)
{
	CKNotification* iCKNotification = (__bridge CKNotification*) ptr;
	CKSubscriptionID val = [iCKNotification subscriptionID];
	return [val UTF8String];
}


void CKNotification_Dispose(void* ptr)
{
    CKNotification* val = (__bridge CKNotification*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKNotification");
}

}
