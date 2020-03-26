//
//  CKDiscoverUserIdentitiesOperation.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKDiscoverUserIdentitiesOperation.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKDiscoverUserIdentitiesOperation_init(
    void** exceptionPtr)
{
    @try 
    {
        CKDiscoverUserIdentitiesOperation* iCKDiscoverUserIdentitiesOperation = [[CKDiscoverUserIdentitiesOperation alloc] init];
            return (__bridge_retained void*) iCKDiscoverUserIdentitiesOperation;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKDiscoverUserIdentitiesOperation_initWithUserIdentityLookupInfos(
    void* userIdentityLookupInfos[],
	long userIdentityLookupInfosCount,
    void** exceptionPtr)
{
    @try 
    {
        CKDiscoverUserIdentitiesOperation* iCKDiscoverUserIdentitiesOperation = [[CKDiscoverUserIdentitiesOperation alloc] initWithUserIdentityLookupInfos:[Converters BridgedArray:userIdentityLookupInfos withCount:userIdentityLookupInfosCount]];
            return (__bridge_retained void*) iCKDiscoverUserIdentitiesOperation;
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

void CKDiscoverUserIdentitiesOperation_GetPropUserIdentityLookupInfos(void* ptr, void** buffer, long* count)
{
	CKDiscoverUserIdentitiesOperation* iCKDiscoverUserIdentitiesOperation = (__bridge CKDiscoverUserIdentitiesOperation*) ptr;
	NSArray<CKUserIdentityLookupInfo*>* val = [iCKDiscoverUserIdentitiesOperation userIdentityLookupInfos];

	*buffer = [Converters NSArrayToRetainedCArray:val];
	*count = [val count];
}

void CKDiscoverUserIdentitiesOperation_SetPropUserIdentityLookupInfos(void* ptr, void* userIdentityLookupInfos[],
	long userIdentityLookupInfosCount, void** exceptionPtr)
{
	@try 
	{
		CKDiscoverUserIdentitiesOperation* iCKDiscoverUserIdentitiesOperation = (__bridge CKDiscoverUserIdentitiesOperation*) ptr;
		[iCKDiscoverUserIdentitiesOperation setUserIdentityLookupInfos:[Converters BridgedArray:userIdentityLookupInfos withCount:userIdentityLookupInfosCount]];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}
void CKDiscoverUserIdentitiesOperation_SetPropUserIdentityDiscoveredHandler(void* ptr, userIdentityDiscoveredCallback userIdentityDiscoveredHandler, void** exceptionPtr)
{
	@try 
	{
		CKDiscoverUserIdentitiesOperation* iCKDiscoverUserIdentitiesOperation = (__bridge CKDiscoverUserIdentitiesOperation*) ptr;
		[iCKDiscoverUserIdentitiesOperation setUserIdentityDiscoveredBlock:^(CKUserIdentity* _identity,
	CKUserIdentityLookupInfo* _lookupInfo)
			{
				
				userIdentityDiscoveredHandler(ptr, (__bridge_retained void*) _identity, (__bridge_retained void*) _lookupInfo);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}
void CKDiscoverUserIdentitiesOperation_SetPropDiscoverUserIdentitiesCompletionHandler(void* ptr, discoverUserIdentitiesCompletionCallback discoverUserIdentitiesCompletionHandler, void** exceptionPtr)
{
	@try 
	{
		CKDiscoverUserIdentitiesOperation* iCKDiscoverUserIdentitiesOperation = (__bridge CKDiscoverUserIdentitiesOperation*) ptr;
		[iCKDiscoverUserIdentitiesOperation setDiscoverUserIdentitiesCompletionBlock:^(NSError* _operationError)
			{
				
				discoverUserIdentitiesCompletionHandler(ptr, (__bridge_retained void*) _operationError);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}


void CKDiscoverUserIdentitiesOperation_Dispose(void* ptr)
{
    CKDiscoverUserIdentitiesOperation* val = (__bridge CKDiscoverUserIdentitiesOperation*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKDiscoverUserIdentitiesOperation");
}

}
