//
//  CKSubscription.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKSubscription.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties

void* CKSubscription_GetPropNotificationInfo(void* ptr)
{
	CKSubscription* iCKSubscription = (__bridge CKSubscription*) ptr;
	CKNotificationInfo* val = [iCKSubscription notificationInfo];
	return (__bridge_retained void*) val;
}

void CKSubscription_SetPropNotificationInfo(void* ptr, void* notificationInfo, void** exceptionPtr)
{
	@try 
	{
		CKSubscription* iCKSubscription = (__bridge CKSubscription*) ptr;
		[iCKSubscription setNotificationInfo:(__bridge CKNotificationInfo*) notificationInfo];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

long CKSubscription_GetPropSubscriptionType(void* ptr)
{
	CKSubscription* iCKSubscription = (__bridge CKSubscription*) ptr;
	CKSubscriptionType val = [iCKSubscription subscriptionType];
	return val;
}

const char* CKSubscription_GetPropSubscriptionID(void* ptr)
{
	CKSubscription* iCKSubscription = (__bridge CKSubscription*) ptr;
	CKSubscriptionID val = [iCKSubscription subscriptionID];
	return [val UTF8String];
}


void CKSubscription_Dispose(void* ptr)
{
    CKSubscription* val = (__bridge CKSubscription*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKSubscription");
}

}
