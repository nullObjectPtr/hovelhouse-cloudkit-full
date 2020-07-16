//
//  CKModifySubscriptionsOperation.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKModifySubscriptionsOperation.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKModifySubscriptionsOperation_init(
    void** exceptionPtr)
{
    @try 
    {
        CKModifySubscriptionsOperation* iCKModifySubscriptionsOperation = [[CKModifySubscriptionsOperation alloc] init];
            return (__bridge_retained void*) iCKModifySubscriptionsOperation;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKModifySubscriptionsOperation_initWithSubscriptionsToSave_subscriptionIDsToDelete(
    void* subscriptionsToSave[],
	long subscriptionsToSaveCount,
    const char* subscriptionIDsToDelete[],
	long subscriptionIDsToDeleteCount,
    void** exceptionPtr)
{
    @try 
    {
        CKModifySubscriptionsOperation* iCKModifySubscriptionsOperation = [[CKModifySubscriptionsOperation alloc] initWithSubscriptionsToSave:[Converters BridgedArray:subscriptionsToSave withCount:subscriptionsToSaveCount] subscriptionIDsToDelete:[Converters StringArray:subscriptionIDsToDelete withCount:subscriptionIDsToDeleteCount]];
            return (__bridge_retained void*) iCKModifySubscriptionsOperation;
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
void CKModifySubscriptionsOperation_SetPropModifySubscriptionsCompletionBlock(void* ptr, modifySubscriptionsCompletionCallback modifySubscriptionsCompletionBlock, void** exceptionPtr)
{
	@try 
	{
		CKModifySubscriptionsOperation* iCKModifySubscriptionsOperation = (__bridge CKModifySubscriptionsOperation*) ptr;
		[iCKModifySubscriptionsOperation setModifySubscriptionsCompletionBlock:^(NSArray<CKSubscription*>* savedSubscriptions,
	NSArray<CKSubscriptionID>* deletedSubscriptionIDs,
	NSError* operationError)
			{
				long savedSubscriptionsCount = [savedSubscriptions count];
			void** savedSubscriptionsBuffer = (void**) malloc(sizeof(void*) * savedSubscriptionsCount);
			[Converters NSArrayToRetainedCArray:savedSubscriptions withBuffer:savedSubscriptionsBuffer];long deletedSubscriptionIDsCount = [deletedSubscriptionIDs count];
			const char** deletedSubscriptionIDsBuffer = [Converters NSArrayOfStringsToCArrayOfStringPointers:deletedSubscriptionIDs];
				modifySubscriptionsCompletionBlock(ptr, savedSubscriptionsBuffer, savedSubscriptionsCount, deletedSubscriptionIDsBuffer, deletedSubscriptionIDsCount, (__bridge_retained void*) operationError);
				free(savedSubscriptionsBuffer);free(deletedSubscriptionIDsBuffer);
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}


void CKModifySubscriptionsOperation_Dispose(void* ptr)
{
    CKModifySubscriptionsOperation* val = (__bridge CKModifySubscriptionsOperation*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKModifySubscriptionsOperation");
}

}
