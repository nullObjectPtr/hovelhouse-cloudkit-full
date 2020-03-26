//
//  CKFetchShareParticipantsOperation.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKFetchShareParticipantsOperation.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKFetchShareParticipantsOperation_init(
    void** exceptionPtr)
{
    @try 
    {
        CKFetchShareParticipantsOperation* iCKFetchShareParticipantsOperation = [[CKFetchShareParticipantsOperation alloc] init];
            return (__bridge_retained void*) iCKFetchShareParticipantsOperation;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKFetchShareParticipantsOperation_initWithUserIdentityLookupInfos(
    void* userIdentityLookupInfos[],
	long userIdentityLookupInfosCount,
    void** exceptionPtr)
{
    @try 
    {
        CKFetchShareParticipantsOperation* iCKFetchShareParticipantsOperation = [[CKFetchShareParticipantsOperation alloc] initWithUserIdentityLookupInfos:[Converters BridgedArray:userIdentityLookupInfos withCount:userIdentityLookupInfosCount]];
            return (__bridge_retained void*) iCKFetchShareParticipantsOperation;
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

void CKFetchShareParticipantsOperation_GetPropUserIdentityLookupInfos(void* ptr, void** buffer, long* count)
{
	CKFetchShareParticipantsOperation* iCKFetchShareParticipantsOperation = (__bridge CKFetchShareParticipantsOperation*) ptr;
	NSArray<CKUserIdentityLookupInfo*>* val = [iCKFetchShareParticipantsOperation userIdentityLookupInfos];

	*buffer = [Converters NSArrayToRetainedCArray:val];
	*count = [val count];
}

void CKFetchShareParticipantsOperation_SetPropUserIdentityLookupInfos(void* ptr, void* userIdentityLookupInfos[],
	long userIdentityLookupInfosCount, void** exceptionPtr)
{
	@try 
	{
		CKFetchShareParticipantsOperation* iCKFetchShareParticipantsOperation = (__bridge CKFetchShareParticipantsOperation*) ptr;
		[iCKFetchShareParticipantsOperation setUserIdentityLookupInfos:[Converters BridgedArray:userIdentityLookupInfos withCount:userIdentityLookupInfosCount]];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}
void CKFetchShareParticipantsOperation_SetPropFetchShareParticipantsCompletionHandler(void* ptr, fetchShareParticipantsCompletionCallback fetchShareParticipantsCompletionHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchShareParticipantsOperation* iCKFetchShareParticipantsOperation = (__bridge CKFetchShareParticipantsOperation*) ptr;
		[iCKFetchShareParticipantsOperation setFetchShareParticipantsCompletionBlock:^(NSError* _operationError)
			{
				
				fetchShareParticipantsCompletionHandler(ptr, (__bridge_retained void*) _operationError);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}
void CKFetchShareParticipantsOperation_SetPropShareParticipantFetchedHandler(void* ptr, shareParticipantFetchedCallback shareParticipantFetchedHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchShareParticipantsOperation* iCKFetchShareParticipantsOperation = (__bridge CKFetchShareParticipantsOperation*) ptr;
		[iCKFetchShareParticipantsOperation setShareParticipantFetchedBlock:^(CKShareParticipant* _participant)
			{
				
				shareParticipantFetchedHandler(ptr, (__bridge_retained void*) _participant);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}


void CKFetchShareParticipantsOperation_Dispose(void* ptr)
{
    CKFetchShareParticipantsOperation* val = (__bridge CKFetchShareParticipantsOperation*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKFetchShareParticipantsOperation");
}

}
