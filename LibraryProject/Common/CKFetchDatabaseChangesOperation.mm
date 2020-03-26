//
//  CKFetchDatabaseChangesOperation.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKFetchDatabaseChangesOperation.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKFetchDatabaseChangesOperation_init(
    void** exceptionPtr)
{
    @try 
    {
        CKFetchDatabaseChangesOperation* iCKFetchDatabaseChangesOperation = [[CKFetchDatabaseChangesOperation alloc] init];
            return (__bridge_retained void*) iCKFetchDatabaseChangesOperation;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKFetchDatabaseChangesOperation_initWithPreviousServerChangeToken(
    void* previousServerChangeToken,
    void** exceptionPtr)
{
    @try 
    {
        CKFetchDatabaseChangesOperation* iCKFetchDatabaseChangesOperation = [[CKFetchDatabaseChangesOperation alloc] initWithPreviousServerChangeToken:(__bridge CKServerChangeToken*) previousServerChangeToken];
            return (__bridge_retained void*) iCKFetchDatabaseChangesOperation;
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
void CKFetchDatabaseChangesOperation_SetPropChangeTokenUpdatedHandler(void* ptr, changeTokenUpdatedCallback changeTokenUpdatedHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchDatabaseChangesOperation* iCKFetchDatabaseChangesOperation = (__bridge CKFetchDatabaseChangesOperation*) ptr;
		[iCKFetchDatabaseChangesOperation setChangeTokenUpdatedBlock:^(CKServerChangeToken* _serverChangeToken)
			{
				
				changeTokenUpdatedHandler(ptr, (__bridge_retained void*) _serverChangeToken);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}
void CKFetchDatabaseChangesOperation_SetPropFetchDatabaseChangesCompletionHandler(void* ptr, fetchDatabaseChangesCompletionCallback fetchDatabaseChangesCompletionHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchDatabaseChangesOperation* iCKFetchDatabaseChangesOperation = (__bridge CKFetchDatabaseChangesOperation*) ptr;
		[iCKFetchDatabaseChangesOperation setFetchDatabaseChangesCompletionBlock:^(CKServerChangeToken* _serverChangeToken,
	BOOL _moreComing,
	NSError* _operationError)
			{
				
				fetchDatabaseChangesCompletionHandler(ptr, (__bridge_retained void*) _serverChangeToken, _moreComing, (__bridge_retained void*) _operationError);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}
void CKFetchDatabaseChangesOperation_SetPropRecordZoneWithIDChangedHandler(void* ptr, recordZoneWithIDChangedCallback recordZoneWithIDChangedHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchDatabaseChangesOperation* iCKFetchDatabaseChangesOperation = (__bridge CKFetchDatabaseChangesOperation*) ptr;
		[iCKFetchDatabaseChangesOperation setRecordZoneWithIDChangedBlock:^(CKRecordZoneID* _zoneID)
			{
				
				recordZoneWithIDChangedHandler(ptr, (__bridge_retained void*) _zoneID);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}
void CKFetchDatabaseChangesOperation_SetPropRecordZoneWithIDWasDeletedHandler(void* ptr, recordZoneWithIDWasDeletedCallback recordZoneWithIDWasDeletedHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchDatabaseChangesOperation* iCKFetchDatabaseChangesOperation = (__bridge CKFetchDatabaseChangesOperation*) ptr;
		[iCKFetchDatabaseChangesOperation setRecordZoneWithIDWasDeletedBlock:^(CKRecordZoneID* _zoneID)
			{
				
				recordZoneWithIDWasDeletedHandler(ptr, (__bridge_retained void*) _zoneID);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}
void CKFetchDatabaseChangesOperation_SetPropRecordZoneWithIDWasPurgedHandler(void* ptr, recordZoneWithIDWasPurgedCallback recordZoneWithIDWasPurgedHandler, void** exceptionPtr)
{
	@try 
	{
		CKFetchDatabaseChangesOperation* iCKFetchDatabaseChangesOperation = (__bridge CKFetchDatabaseChangesOperation*) ptr;
		[iCKFetchDatabaseChangesOperation setRecordZoneWithIDWasPurgedBlock:^(CKRecordZoneID* _zoneID)
			{
				
				recordZoneWithIDWasPurgedHandler(ptr, (__bridge_retained void*) _zoneID);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}

void* CKFetchDatabaseChangesOperation_GetPropPreviousServerChangeToken(void* ptr)
{
	CKFetchDatabaseChangesOperation* iCKFetchDatabaseChangesOperation = (__bridge CKFetchDatabaseChangesOperation*) ptr;
	CKServerChangeToken* val = [iCKFetchDatabaseChangesOperation previousServerChangeToken];
	return (__bridge_retained void*) val;
}

void CKFetchDatabaseChangesOperation_SetPropPreviousServerChangeToken(void* ptr, void* previousServerChangeToken, void** exceptionPtr)
{
	@try 
	{
		CKFetchDatabaseChangesOperation* iCKFetchDatabaseChangesOperation = (__bridge CKFetchDatabaseChangesOperation*) ptr;
		[iCKFetchDatabaseChangesOperation setPreviousServerChangeToken:(__bridge CKServerChangeToken*) previousServerChangeToken];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

bool CKFetchDatabaseChangesOperation_GetPropFetchAllChanges(void* ptr)
{
	CKFetchDatabaseChangesOperation* iCKFetchDatabaseChangesOperation = (__bridge CKFetchDatabaseChangesOperation*) ptr;
	BOOL val = [iCKFetchDatabaseChangesOperation fetchAllChanges];
	return val;
}

void CKFetchDatabaseChangesOperation_SetPropFetchAllChanges(void* ptr, bool fetchAllChanges, void** exceptionPtr)
{
	@try 
	{
		CKFetchDatabaseChangesOperation* iCKFetchDatabaseChangesOperation = (__bridge CKFetchDatabaseChangesOperation*) ptr;
		[iCKFetchDatabaseChangesOperation setFetchAllChanges:fetchAllChanges];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

uint CKFetchDatabaseChangesOperation_GetPropResultsLimit(void* ptr)
{
	CKFetchDatabaseChangesOperation* iCKFetchDatabaseChangesOperation = (__bridge CKFetchDatabaseChangesOperation*) ptr;
	NSUInteger val = [iCKFetchDatabaseChangesOperation resultsLimit];
	return val;
}

void CKFetchDatabaseChangesOperation_SetPropResultsLimit(void* ptr, uint resultsLimit, void** exceptionPtr)
{
	@try 
	{
		CKFetchDatabaseChangesOperation* iCKFetchDatabaseChangesOperation = (__bridge CKFetchDatabaseChangesOperation*) ptr;
		[iCKFetchDatabaseChangesOperation setResultsLimit:resultsLimit];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


void CKFetchDatabaseChangesOperation_Dispose(void* ptr)
{
    CKFetchDatabaseChangesOperation* val = (__bridge CKFetchDatabaseChangesOperation*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKFetchDatabaseChangesOperation");
}

}
