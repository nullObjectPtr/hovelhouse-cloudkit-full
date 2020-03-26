//
//  CKFetchRecordZonesOperation.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKFetchRecordZonesOperation.h"
#import "Converters.h"

extern "C" {

//ClassMethods
void* CKFetchRecordZonesOperation_fetchAllRecordZonesOperation(
	void** exception
    )
{
	@try {
		NSLog(@"CKFetchRecordZonesOperation_fetchAllRecordZonesOperation()");
	    CKFetchRecordZonesOperation* val = [CKFetchRecordZonesOperation fetchAllRecordZonesOperation];
		return (__bridge_retained void*) val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}

	return nil;
}

//InitMethods
void* CKFetchRecordZonesOperation_init(
    void** exceptionPtr)
{
    @try 
    {
        CKFetchRecordZonesOperation* iCKFetchRecordZonesOperation = [[CKFetchRecordZonesOperation alloc] init];
            return (__bridge_retained void*) iCKFetchRecordZonesOperation;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKFetchRecordZonesOperation_initWithRecordZoneIDs(
    void* zoneIDs[],
	long zoneIDsCount,
    void** exceptionPtr)
{
    @try 
    {
        CKFetchRecordZonesOperation* iCKFetchRecordZonesOperation = [[CKFetchRecordZonesOperation alloc] initWithRecordZoneIDs:[Converters BridgedArray:zoneIDs withCount:zoneIDsCount]];
            return (__bridge_retained void*) iCKFetchRecordZonesOperation;
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

void CKFetchRecordZonesOperation_GetPropRecordZoneIDs(void* ptr, void** buffer, long* count)
{
	CKFetchRecordZonesOperation* iCKFetchRecordZonesOperation = (__bridge CKFetchRecordZonesOperation*) ptr;
	NSArray<CKRecordZoneID*>* val = [iCKFetchRecordZonesOperation recordZoneIDs];

	*buffer = [Converters NSArrayToRetainedCArray:val];
	*count = [val count];
}

void CKFetchRecordZonesOperation_SetPropRecordZoneIDs(void* ptr, void* recordZoneIDs[],
	long recordZoneIDsCount, void** exceptionPtr)
{
	@try 
	{
		CKFetchRecordZonesOperation* iCKFetchRecordZonesOperation = (__bridge CKFetchRecordZonesOperation*) ptr;
		[iCKFetchRecordZonesOperation setRecordZoneIDs:[Converters BridgedArray:recordZoneIDs withCount:recordZoneIDsCount]];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}
void CKFetchRecordZonesOperation_SetPropFetchRecordZonesCompletionHandler(void* ptr, fetchRecordZonesCompletionCallback fetchRecordZonesCompletionHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchRecordZonesOperation* iCKFetchRecordZonesOperation = (__bridge CKFetchRecordZonesOperation*) ptr;
		[iCKFetchRecordZonesOperation setFetchRecordZonesCompletionBlock:^(NSDictionary<CKRecordZoneID*,CKRecordZone*>* _recordZonesByZoneID,
	NSError* _operationError)
			{
				long _recordZonesByZoneIDCount = [_recordZonesByZoneID count];
				void** _recordZonesByZoneIDKeys = [Converters NSDictionaryToKeysArray:_recordZonesByZoneID];
				void** _recordZonesByZoneIDValues = [Converters NSDictionaryToValuesArray:_recordZonesByZoneID];

				fetchRecordZonesCompletionHandler(ptr, _recordZonesByZoneIDKeys, _recordZonesByZoneIDValues, _recordZonesByZoneIDCount, (__bridge_retained void*) _operationError);
				free(_recordZonesByZoneIDKeys);
				free(_recordZonesByZoneIDValues);
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}


void CKFetchRecordZonesOperation_Dispose(void* ptr)
{
    CKFetchRecordZonesOperation* val = (__bridge CKFetchRecordZonesOperation*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKFetchRecordZonesOperation");
}

}
