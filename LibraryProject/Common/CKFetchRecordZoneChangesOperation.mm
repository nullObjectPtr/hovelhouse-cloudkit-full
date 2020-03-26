//
//  CKFetchRecordZoneChangesOperation.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKFetchRecordZoneChangesOperation.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKFetchRecordZoneChangesOperation_init(
    void** exceptionPtr)
{
    @try 
    {
        CKFetchRecordZoneChangesOperation* iCKFetchRecordZoneChangesOperation = [[CKFetchRecordZoneChangesOperation alloc] init];
            return (__bridge_retained void*) iCKFetchRecordZoneChangesOperation;
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
void CKFetchRecordZoneChangesOperation_SetPropRecordChangedHandler(void* ptr, recordChangedCallback recordChangedHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchRecordZoneChangesOperation* iCKFetchRecordZoneChangesOperation = (__bridge CKFetchRecordZoneChangesOperation*) ptr;
		[iCKFetchRecordZoneChangesOperation setRecordChangedBlock:^(CKRecord* _record)
			{
				
				recordChangedHandler(ptr, (__bridge_retained void*) _record);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}
void CKFetchRecordZoneChangesOperation_SetPropFetchRecordZoneChangesCompletionHandler(void* ptr, fetchRecordZoneChangesCompletionCallback fetchRecordZoneChangesCompletionHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchRecordZoneChangesOperation* iCKFetchRecordZoneChangesOperation = (__bridge CKFetchRecordZoneChangesOperation*) ptr;
		[iCKFetchRecordZoneChangesOperation setFetchRecordZoneChangesCompletionBlock:^(NSError* _operationError)
			{
				
				fetchRecordZoneChangesCompletionHandler(ptr, (__bridge_retained void*) _operationError);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}
void CKFetchRecordZoneChangesOperation_SetPropRecordWithIDWasDeletedHandler(void* ptr, recordWithIDWasDeletedCallback recordWithIDWasDeletedHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchRecordZoneChangesOperation* iCKFetchRecordZoneChangesOperation = (__bridge CKFetchRecordZoneChangesOperation*) ptr;
		[iCKFetchRecordZoneChangesOperation setRecordWithIDWasDeletedBlock:^(CKRecordID* _recordID,
	CKRecordType _recordType)
			{
				
				recordWithIDWasDeletedHandler(ptr, (__bridge_retained void*) _recordID, [_recordType UTF8String]);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}

bool CKFetchRecordZoneChangesOperation_GetPropFetchAllChanges(void* ptr)
{
	CKFetchRecordZoneChangesOperation* iCKFetchRecordZoneChangesOperation = (__bridge CKFetchRecordZoneChangesOperation*) ptr;
	BOOL val = [iCKFetchRecordZoneChangesOperation fetchAllChanges];
	return val;
}

void CKFetchRecordZoneChangesOperation_SetPropFetchAllChanges(void* ptr, bool fetchAllChanges, void** exceptionPtr)
{
	@try 
	{
		CKFetchRecordZoneChangesOperation* iCKFetchRecordZoneChangesOperation = (__bridge CKFetchRecordZoneChangesOperation*) ptr;
		[iCKFetchRecordZoneChangesOperation setFetchAllChanges:fetchAllChanges];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

void CKFetchRecordZoneChangesOperation_GetPropRecordZoneIDs(void* ptr, void** buffer, long* count)
{
	CKFetchRecordZoneChangesOperation* iCKFetchRecordZoneChangesOperation = (__bridge CKFetchRecordZoneChangesOperation*) ptr;
	NSArray<CKRecordZoneID*>* val = [iCKFetchRecordZoneChangesOperation recordZoneIDs];

	*buffer = [Converters NSArrayToRetainedCArray:val];
	*count = [val count];
}

void CKFetchRecordZoneChangesOperation_SetPropRecordZoneIDs(void* ptr, void* recordZoneIDs[],
	long recordZoneIDsCount, void** exceptionPtr)
{
	@try 
	{
		CKFetchRecordZoneChangesOperation* iCKFetchRecordZoneChangesOperation = (__bridge CKFetchRecordZoneChangesOperation*) ptr;
		[iCKFetchRecordZoneChangesOperation setRecordZoneIDs:[Converters BridgedArray:recordZoneIDs withCount:recordZoneIDsCount]];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


void CKFetchRecordZoneChangesOperation_Dispose(void* ptr)
{
    CKFetchRecordZoneChangesOperation* val = (__bridge CKFetchRecordZoneChangesOperation*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKFetchRecordZoneChangesOperation");
}

}
