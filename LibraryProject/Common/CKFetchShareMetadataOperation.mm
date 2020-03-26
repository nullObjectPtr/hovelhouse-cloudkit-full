//
//  CKFetchShareMetadataOperation.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKFetchShareMetadataOperation.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKFetchShareMetadataOperation_init(
    void** exceptionPtr)
{
    @try 
    {
        CKFetchShareMetadataOperation* iCKFetchShareMetadataOperation = [[CKFetchShareMetadataOperation alloc] init];
            return (__bridge_retained void*) iCKFetchShareMetadataOperation;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKFetchShareMetadataOperation_initWithShareURLs(
    void* shareURLs[],
	long shareURLsCount,
    void** exceptionPtr)
{
    @try 
    {
        CKFetchShareMetadataOperation* iCKFetchShareMetadataOperation = [[CKFetchShareMetadataOperation alloc] initWithShareURLs:[Converters BridgedArray:shareURLs withCount:shareURLsCount]];
            return (__bridge_retained void*) iCKFetchShareMetadataOperation;
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

bool CKFetchShareMetadataOperation_GetPropShouldFetchRootRecord(void* ptr)
{
	CKFetchShareMetadataOperation* iCKFetchShareMetadataOperation = (__bridge CKFetchShareMetadataOperation*) ptr;
	BOOL val = [iCKFetchShareMetadataOperation shouldFetchRootRecord];
	return val;
}

void CKFetchShareMetadataOperation_SetPropShouldFetchRootRecord(void* ptr, bool shouldFetchRootRecord, void** exceptionPtr)
{
	@try 
	{
		CKFetchShareMetadataOperation* iCKFetchShareMetadataOperation = (__bridge CKFetchShareMetadataOperation*) ptr;
		[iCKFetchShareMetadataOperation setShouldFetchRootRecord:shouldFetchRootRecord];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}
//TODO: PROPERTYSTRINGARRAY

void CKFetchShareMetadataOperation_GetPropShareURLs(void* ptr, void** buffer, long* count)
{
	CKFetchShareMetadataOperation* iCKFetchShareMetadataOperation = (__bridge CKFetchShareMetadataOperation*) ptr;
	NSArray<NSURL*>* val = [iCKFetchShareMetadataOperation shareURLs];

	*buffer = [Converters NSArrayToRetainedCArray:val];
	*count = [val count];
}

void CKFetchShareMetadataOperation_SetPropShareURLs(void* ptr, void* shareURLs[],
	long shareURLsCount, void** exceptionPtr)
{
	@try 
	{
		CKFetchShareMetadataOperation* iCKFetchShareMetadataOperation = (__bridge CKFetchShareMetadataOperation*) ptr;
		[iCKFetchShareMetadataOperation setShareURLs:[Converters BridgedArray:shareURLs withCount:shareURLsCount]];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}
void CKFetchShareMetadataOperation_SetPropFetchShareMetadataCompletionHandler(void* ptr, fetchShareMetadataCompletionCallback fetchShareMetadataCompletionHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchShareMetadataOperation* iCKFetchShareMetadataOperation = (__bridge CKFetchShareMetadataOperation*) ptr;
		[iCKFetchShareMetadataOperation setFetchShareMetadataCompletionBlock:^(NSError* _operationError)
			{
				
				fetchShareMetadataCompletionHandler(ptr, (__bridge_retained void*) _operationError);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}
void CKFetchShareMetadataOperation_SetPropPerShareMetadataHandler(void* ptr, perShareMetadataCallback perShareMetadataHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchShareMetadataOperation* iCKFetchShareMetadataOperation = (__bridge CKFetchShareMetadataOperation*) ptr;
		[iCKFetchShareMetadataOperation setPerShareMetadataBlock:^(NSURL* _shareURL,
	CKShareMetadata* _shareMetadata,
	NSError* _error)
			{
				
				perShareMetadataHandler(ptr, (__bridge_retained void*) _shareURL, (__bridge_retained void*) _shareMetadata, (__bridge_retained void*) _error);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}


void CKFetchShareMetadataOperation_Dispose(void* ptr)
{
    CKFetchShareMetadataOperation* val = (__bridge CKFetchShareMetadataOperation*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKFetchShareMetadataOperation");
}

}
