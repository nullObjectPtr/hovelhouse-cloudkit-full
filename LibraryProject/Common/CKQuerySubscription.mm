//
//  CKQuerySubscription.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKQuerySubscription.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKQuerySubscription_initWithRecordType_predicate_options(
    const char* recordType,
    void* predicate,
    long querySubscriptionOptions,
    void** exceptionPtr)
{
    @try 
    {
        CKQuerySubscription* iCKQuerySubscription = [[CKQuerySubscription alloc] initWithRecordType:[NSString stringWithUTF8String:recordType] predicate:(__bridge NSPredicate*) predicate options:(CKQuerySubscriptionOptions)querySubscriptionOptions];
            return (__bridge_retained void*) iCKQuerySubscription;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKQuerySubscription_initWithRecordType_predicate_subscriptionID_options(
    const char* recordType,
    void* predicate,
    const char* subscriptionID,
    long querySubscriptionOptions,
    void** exceptionPtr)
{
    @try 
    {
        CKQuerySubscription* iCKQuerySubscription = [[CKQuerySubscription alloc] initWithRecordType:[NSString stringWithUTF8String:recordType] predicate:(__bridge NSPredicate*) predicate subscriptionID:[NSString stringWithUTF8String:subscriptionID] options:(CKQuerySubscriptionOptions)querySubscriptionOptions];
            return (__bridge_retained void*) iCKQuerySubscription;
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

void* CKQuerySubscription_GetPropPredicate(void* ptr)
{
	CKQuerySubscription* iCKQuerySubscription = (__bridge CKQuerySubscription*) ptr;
	NSPredicate* val = [iCKQuerySubscription predicate];
	return (__bridge_retained void*) val;
}

long CKQuerySubscription_GetPropQuerySubscriptionOptions(void* ptr)
{
	CKQuerySubscription* iCKQuerySubscription = (__bridge CKQuerySubscription*) ptr;
	CKQuerySubscriptionOptions val = [iCKQuerySubscription querySubscriptionOptions];
	return val;
}

const char* CKQuerySubscription_GetPropRecordType(void* ptr)
{
	CKQuerySubscription* iCKQuerySubscription = (__bridge CKQuerySubscription*) ptr;
	CKRecordType val = [iCKQuerySubscription recordType];
	return [val UTF8String];
}

void* CKQuerySubscription_GetPropZoneID(void* ptr)
{
	CKQuerySubscription* iCKQuerySubscription = (__bridge CKQuerySubscription*) ptr;
	CKRecordZoneID* val = [iCKQuerySubscription zoneID];
	return (__bridge_retained void*) val;
}

void CKQuerySubscription_SetPropZoneID(void* ptr, void* zoneID, void** exceptionPtr)
{
	@try 
	{
		CKQuerySubscription* iCKQuerySubscription = (__bridge CKQuerySubscription*) ptr;
		[iCKQuerySubscription setZoneID:(__bridge CKRecordZoneID*) zoneID];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


void CKQuerySubscription_Dispose(void* ptr)
{
    CKQuerySubscription* val = (__bridge CKQuerySubscription*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKQuerySubscription");
}

}
