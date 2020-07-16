//
//  CKDatabaseSubscription.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKDatabaseSubscription.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKDatabaseSubscription_init(
    void** exceptionPtr)
{
    @try 
    {
        CKDatabaseSubscription* iCKDatabaseSubscription = [[CKDatabaseSubscription alloc] init];
            return (__bridge_retained void*) iCKDatabaseSubscription;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKDatabaseSubscription_initWithSubscriptionID(
    const char* subscriptionID,
    void** exceptionPtr)
{
    @try 
    {
        CKDatabaseSubscription* iCKDatabaseSubscription = [[CKDatabaseSubscription alloc] initWithSubscriptionID:[NSString stringWithUTF8String:subscriptionID]];
            return (__bridge_retained void*) iCKDatabaseSubscription;
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

const char* CKDatabaseSubscription_GetPropRecordType(void* ptr)
{
	CKDatabaseSubscription* iCKDatabaseSubscription = (__bridge CKDatabaseSubscription*) ptr;
	CKRecordType val = [iCKDatabaseSubscription recordType];
	return [val UTF8String];
}

void CKDatabaseSubscription_SetPropRecordType(void* ptr, const char* recordType, void** exceptionPtr)
{
	@try 
	{
		CKDatabaseSubscription* iCKDatabaseSubscription = (__bridge CKDatabaseSubscription*) ptr;
		[iCKDatabaseSubscription setRecordType:[NSString stringWithUTF8String:recordType]];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


void CKDatabaseSubscription_Dispose(void* ptr)
{
    CKDatabaseSubscription* val = (__bridge CKDatabaseSubscription*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKDatabaseSubscription");
}

}
