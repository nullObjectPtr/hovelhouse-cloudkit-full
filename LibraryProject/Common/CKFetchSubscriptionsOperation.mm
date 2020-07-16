//
//  CKFetchSubscriptionsOperation.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKFetchSubscriptionsOperation.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKFetchSubscriptionsOperation_init(
    void** exceptionPtr)
{
    @try 
    {
        CKFetchSubscriptionsOperation* iCKFetchSubscriptionsOperation = [[CKFetchSubscriptionsOperation alloc] init];
            return (__bridge_retained void*) iCKFetchSubscriptionsOperation;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKFetchSubscriptionsOperation_initWithSubscriptionIDs(
    const char* subscriptionIDs[],
	long subscriptionIDsCount,
    void** exceptionPtr)
{
    @try 
    {
        CKFetchSubscriptionsOperation* iCKFetchSubscriptionsOperation = [[CKFetchSubscriptionsOperation alloc] initWithSubscriptionIDs:[Converters StringArray:subscriptionIDs withCount:subscriptionIDsCount]];
            return (__bridge_retained void*) iCKFetchSubscriptionsOperation;
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


void CKFetchSubscriptionsOperation_Dispose(void* ptr)
{
    CKFetchSubscriptionsOperation* val = (__bridge CKFetchSubscriptionsOperation*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKFetchSubscriptionsOperation");
}

}
