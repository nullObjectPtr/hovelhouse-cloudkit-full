//
//  CKFetchRecordsOperation.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKFetchRecordsOperation.h"
#import "Converters.h"

extern "C" {

//ClassMethods
void* CKFetchRecordsOperation_fetchCurrentUserRecordOperation(
	void** exception
    )
{
	@try {
		NSLog(@"CKFetchRecordsOperation_fetchCurrentUserRecordOperation()");
	    CKFetchRecordsOperation* val = [CKFetchRecordsOperation fetchCurrentUserRecordOperation];
		return (__bridge_retained void*) val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}

	return nil;
}

//InitMethods
void* CKFetchRecordsOperation_init(
    void** exceptionPtr)
{
    @try 
    {
        CKFetchRecordsOperation* iCKFetchRecordsOperation = [[CKFetchRecordsOperation alloc] init];
            return (__bridge_retained void*) iCKFetchRecordsOperation;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKFetchRecordsOperation_initWithRecordIDs(
    void* recordIDs[],
	long recordIDsCount,
    void** exceptionPtr)
{
    @try 
    {
        CKFetchRecordsOperation* iCKFetchRecordsOperation = [[CKFetchRecordsOperation alloc] initWithRecordIDs:[Converters BridgedArray:recordIDs withCount:recordIDsCount]];
            return (__bridge_retained void*) iCKFetchRecordsOperation;
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

void CKFetchRecordsOperation_GetPropRecordIDs(void* ptr, void** buffer, long* count)
{
	CKFetchRecordsOperation* iCKFetchRecordsOperation = (__bridge CKFetchRecordsOperation*) ptr;
	NSArray<CKRecordID*>* val = [iCKFetchRecordsOperation recordIDs];

	*buffer = [Converters NSArrayToRetainedCArray:val];
	*count = [val count];
}

void CKFetchRecordsOperation_SetPropRecordIDs(void* ptr, void* recordIDs[],
	long recordIDsCount, void** exceptionPtr)
{
	@try 
	{
		CKFetchRecordsOperation* iCKFetchRecordsOperation = (__bridge CKFetchRecordsOperation*) ptr;
		[iCKFetchRecordsOperation setRecordIDs:[Converters BridgedArray:recordIDs withCount:recordIDsCount]];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}
//TODO: PROPERTYSTRINGARRAY
void CKFetchRecordsOperation_SetPropFetchRecordsCompletionHandler(void* ptr, fetchRecordsCompletionCallback fetchRecordsCompletionHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchRecordsOperation* iCKFetchRecordsOperation = (__bridge CKFetchRecordsOperation*) ptr;
		[iCKFetchRecordsOperation setFetchRecordsCompletionBlock:^(NSDictionary<CKRecordID*,CKRecord*>* _recordsByRecordID,
	NSError* _operationError)
			{
				long _recordsByRecordIDCount = [_recordsByRecordID count];
				void** _recordsByRecordIDKeys = [Converters NSDictionaryToKeysArray:_recordsByRecordID];
				void** _recordsByRecordIDValues = [Converters NSDictionaryToValuesArray:_recordsByRecordID];

				fetchRecordsCompletionHandler(ptr, _recordsByRecordIDKeys, _recordsByRecordIDValues, _recordsByRecordIDCount, (__bridge_retained void*) _operationError);
				free(_recordsByRecordIDKeys);
				free(_recordsByRecordIDValues);
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}
void CKFetchRecordsOperation_SetPropPerRecordCompletionHandler(void* ptr, perRecordCompletionCallback2 perRecordCompletionHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchRecordsOperation* iCKFetchRecordsOperation = (__bridge CKFetchRecordsOperation*) ptr;
		[iCKFetchRecordsOperation setPerRecordCompletionBlock:^(CKRecord* _record,
	CKRecordID* _recordID,
	NSError* _error)
			{
				
				perRecordCompletionHandler(ptr, (__bridge_retained void*) _record, (__bridge_retained void*) _recordID, (__bridge_retained void*) _error);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}
void CKFetchRecordsOperation_SetPropProgressHandler(void* ptr, perRecordProgressCallback2 progressHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchRecordsOperation* iCKFetchRecordsOperation = (__bridge CKFetchRecordsOperation*) ptr;
		[iCKFetchRecordsOperation setPerRecordProgressBlock:^(CKRecordID* _record,
	double _progress)
			{
				
				progressHandler(ptr, (__bridge_retained void*) _record, _progress);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}


void CKFetchRecordsOperation_Dispose(void* ptr)
{
    CKFetchRecordsOperation* val = (__bridge CKFetchRecordsOperation*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKFetchRecordsOperation");
}

}
