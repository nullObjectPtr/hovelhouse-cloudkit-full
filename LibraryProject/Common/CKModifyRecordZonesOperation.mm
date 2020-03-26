//
//  CKModifyRecordZonesOperation.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKModifyRecordZonesOperation.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKModifyRecordZonesOperation_init(
    void** exceptionPtr)
{
    @try 
    {
        CKModifyRecordZonesOperation* iCKModifyRecordZonesOperation = [[CKModifyRecordZonesOperation alloc] init];
            return (__bridge_retained void*) iCKModifyRecordZonesOperation;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKModifyRecordZonesOperation_initWithRecordZonesToSave_recordZoneIDsToDelete(
    void* recordZonesToSave[],
	long recordZonesToSaveCount,
    void* recordZoneIDsToDelete[],
	long recordZoneIDsToDeleteCount,
    void** exceptionPtr)
{
    @try 
    {
        CKModifyRecordZonesOperation* iCKModifyRecordZonesOperation = [[CKModifyRecordZonesOperation alloc] initWithRecordZonesToSave:[Converters BridgedArray:recordZonesToSave withCount:recordZonesToSaveCount] recordZoneIDsToDelete:[Converters BridgedArray:recordZoneIDsToDelete withCount:recordZoneIDsToDeleteCount]];
            return (__bridge_retained void*) iCKModifyRecordZonesOperation;
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
void CKModifyRecordZonesOperation_SetPropModifyRecordZonesCompletionHandler(void* ptr, modifyRecordZonesCompletionCallback modifyRecordZonesCompletionHandler, void** exceptionPtr)
{
	@try 
	{
		CKModifyRecordZonesOperation* iCKModifyRecordZonesOperation = (__bridge CKModifyRecordZonesOperation*) ptr;
		[iCKModifyRecordZonesOperation setModifyRecordZonesCompletionBlock:^(NSArray<CKRecordZone*>* _savedRecordZones,
	NSArray<CKRecordZoneID*>* _deletedRecordZoneIDs,
	NSError* _operationError)
			{
				long _savedRecordZonesCount = [_savedRecordZones count];
			void** _savedRecordZonesBuffer = (void**) malloc(sizeof(void*) * _savedRecordZonesCount);
			[Converters NSArrayToRetainedCArray:_savedRecordZones withBuffer:_savedRecordZonesBuffer];long _deletedRecordZoneIDsCount = [_deletedRecordZoneIDs count];
			void** _deletedRecordZoneIDsBuffer = (void**) malloc(sizeof(void*) * _deletedRecordZoneIDsCount);
			[Converters NSArrayToRetainedCArray:_deletedRecordZoneIDs withBuffer:_deletedRecordZoneIDsBuffer];
				modifyRecordZonesCompletionHandler(ptr, _savedRecordZonesBuffer, _savedRecordZonesCount, _deletedRecordZoneIDsBuffer, _deletedRecordZoneIDsCount, (__bridge_retained void*) _operationError);
				free(_savedRecordZonesBuffer);free(_deletedRecordZoneIDsBuffer);
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}

void CKModifyRecordZonesOperation_GetPropRecordZonesToSave(void* ptr, void** buffer, long* count)
{
	CKModifyRecordZonesOperation* iCKModifyRecordZonesOperation = (__bridge CKModifyRecordZonesOperation*) ptr;
	NSArray<CKRecordZone*>* val = [iCKModifyRecordZonesOperation recordZonesToSave];

	*buffer = [Converters NSArrayToRetainedCArray:val];
	*count = [val count];
}

void CKModifyRecordZonesOperation_SetPropRecordZonesToSave(void* ptr, void* recordZonesToSave[],
	long recordZonesToSaveCount, void** exceptionPtr)
{
	@try 
	{
		CKModifyRecordZonesOperation* iCKModifyRecordZonesOperation = (__bridge CKModifyRecordZonesOperation*) ptr;
		[iCKModifyRecordZonesOperation setRecordZonesToSave:[Converters BridgedArray:recordZonesToSave withCount:recordZonesToSaveCount]];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

void CKModifyRecordZonesOperation_GetPropRecordZoneIDsToDelete(void* ptr, void** buffer, long* count)
{
	CKModifyRecordZonesOperation* iCKModifyRecordZonesOperation = (__bridge CKModifyRecordZonesOperation*) ptr;
	NSArray<CKRecordZoneID*>* val = [iCKModifyRecordZonesOperation recordZoneIDsToDelete];

	*buffer = [Converters NSArrayToRetainedCArray:val];
	*count = [val count];
}

void CKModifyRecordZonesOperation_SetPropRecordZoneIDsToDelete(void* ptr, void* recordZoneIDsToDelete[],
	long recordZoneIDsToDeleteCount, void** exceptionPtr)
{
	@try 
	{
		CKModifyRecordZonesOperation* iCKModifyRecordZonesOperation = (__bridge CKModifyRecordZonesOperation*) ptr;
		[iCKModifyRecordZonesOperation setRecordZoneIDsToDelete:[Converters BridgedArray:recordZoneIDsToDelete withCount:recordZoneIDsToDeleteCount]];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


void CKModifyRecordZonesOperation_Dispose(void* ptr)
{
    CKModifyRecordZonesOperation* val = (__bridge CKModifyRecordZonesOperation*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKModifyRecordZonesOperation");
}

}
