//
//  CKModifyRecordsOperation.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKModifyRecordsOperation.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKModifyRecordsOperation_init(
    void** exceptionPtr)
{
    @try 
    {
        CKModifyRecordsOperation* iCKModifyRecordsOperation = [[CKModifyRecordsOperation alloc] init];
            return (__bridge_retained void*) iCKModifyRecordsOperation;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKModifyRecordsOperation_initWithRecordsToSave_recordIDsToDelete(
    void* records[],
	long recordsCount,
    void* recordIDs[],
	long recordIDsCount,
    void** exceptionPtr)
{
    @try 
    {
        CKModifyRecordsOperation* iCKModifyRecordsOperation = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:[Converters BridgedArray:records withCount:recordsCount] recordIDsToDelete:[Converters BridgedArray:recordIDs withCount:recordIDsCount]];
            return (__bridge_retained void*) iCKModifyRecordsOperation;
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

void CKModifyRecordsOperation_GetPropRecordsToSave(void* ptr, void** buffer, long* count)
{
	CKModifyRecordsOperation* iCKModifyRecordsOperation = (__bridge CKModifyRecordsOperation*) ptr;
	NSArray<CKRecord*>* val = [iCKModifyRecordsOperation recordsToSave];

	*buffer = [Converters NSArrayToRetainedCArray:val];
	*count = [val count];
}

void CKModifyRecordsOperation_SetPropRecordsToSave(void* ptr, void* recordsToSave[],
	long recordsToSaveCount, void** exceptionPtr)
{
	@try 
	{
		CKModifyRecordsOperation* iCKModifyRecordsOperation = (__bridge CKModifyRecordsOperation*) ptr;
		[iCKModifyRecordsOperation setRecordsToSave:[Converters BridgedArray:recordsToSave withCount:recordsToSaveCount]];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

void CKModifyRecordsOperation_GetPropRecordIDsToDelete(void* ptr, void** buffer, long* count)
{
	CKModifyRecordsOperation* iCKModifyRecordsOperation = (__bridge CKModifyRecordsOperation*) ptr;
	NSArray<CKRecordID*>* val = [iCKModifyRecordsOperation recordIDsToDelete];

	*buffer = [Converters NSArrayToRetainedCArray:val];
	*count = [val count];
}

void CKModifyRecordsOperation_SetPropRecordIDsToDelete(void* ptr, void* recordIDsToDelete[],
	long recordIDsToDeleteCount, void** exceptionPtr)
{
	@try 
	{
		CKModifyRecordsOperation* iCKModifyRecordsOperation = (__bridge CKModifyRecordsOperation*) ptr;
		[iCKModifyRecordsOperation setRecordIDsToDelete:[Converters BridgedArray:recordIDsToDelete withCount:recordIDsToDeleteCount]];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

long CKModifyRecordsOperation_GetPropSavePolicy(void* ptr)
{
	CKModifyRecordsOperation* iCKModifyRecordsOperation = (__bridge CKModifyRecordsOperation*) ptr;
	CKRecordSavePolicy val = [iCKModifyRecordsOperation savePolicy];
	return val;
}

void CKModifyRecordsOperation_SetPropSavePolicy(void* ptr, long savePolicy, void** exceptionPtr)
{
	@try 
	{
		CKModifyRecordsOperation* iCKModifyRecordsOperation = (__bridge CKModifyRecordsOperation*) ptr;
		[iCKModifyRecordsOperation setSavePolicy:(CKRecordSavePolicy)savePolicy];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

bool CKModifyRecordsOperation_GetPropAtomic(void* ptr)
{
	CKModifyRecordsOperation* iCKModifyRecordsOperation = (__bridge CKModifyRecordsOperation*) ptr;
	BOOL val = [iCKModifyRecordsOperation atomic];
	return val;
}

void CKModifyRecordsOperation_SetPropAtomic(void* ptr, bool atomic, void** exceptionPtr)
{
	@try 
	{
		CKModifyRecordsOperation* iCKModifyRecordsOperation = (__bridge CKModifyRecordsOperation*) ptr;
		[iCKModifyRecordsOperation setAtomic:atomic];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}
void CKModifyRecordsOperation_SetPropModifyRecordsCompletionBlock(void* ptr, modifyRecordsCompletionCallback modifyRecordsCompletionBlock, void** exceptionPtr)
{
	@try 
	{
		CKModifyRecordsOperation* iCKModifyRecordsOperation = (__bridge CKModifyRecordsOperation*) ptr;
		[iCKModifyRecordsOperation setModifyRecordsCompletionBlock:^(NSArray<CKRecord*>* _savedRecords,
	NSArray<CKRecordID*>* _deletedRecordIDs,
	NSError* _operationError)
			{
				long _savedRecordsCount = [_savedRecords count];
			void** _savedRecordsBuffer = (void**) malloc(sizeof(void*) * _savedRecordsCount);
			[Converters NSArrayToRetainedCArray:_savedRecords withBuffer:_savedRecordsBuffer];long _deletedRecordIDsCount = [_deletedRecordIDs count];
			void** _deletedRecordIDsBuffer = (void**) malloc(sizeof(void*) * _deletedRecordIDsCount);
			[Converters NSArrayToRetainedCArray:_deletedRecordIDs withBuffer:_deletedRecordIDsBuffer];
				modifyRecordsCompletionBlock(ptr, _savedRecordsBuffer, _savedRecordsCount, _deletedRecordIDsBuffer, _deletedRecordIDsCount, (__bridge_retained void*) _operationError);
				free(_savedRecordsBuffer);free(_deletedRecordIDsBuffer);
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}
void CKModifyRecordsOperation_SetPropPerRecordCompletionBlock(void* ptr, perRecordCompletionCallback perRecordCompletionBlock, void** exceptionPtr)
{
	@try 
	{
		CKModifyRecordsOperation* iCKModifyRecordsOperation = (__bridge CKModifyRecordsOperation*) ptr;
		[iCKModifyRecordsOperation setPerRecordCompletionBlock:^(CKRecord* _record,
	NSError* _error)
			{
				
				perRecordCompletionBlock(ptr, (__bridge_retained void*) _record, (__bridge_retained void*) _error);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}
void CKModifyRecordsOperation_SetPropPerRecordProgressBlock(void* ptr, perRecordProgressCallback perRecordProgressBlock, void** exceptionPtr)
{
	@try 
	{
		CKModifyRecordsOperation* iCKModifyRecordsOperation = (__bridge CKModifyRecordsOperation*) ptr;
		[iCKModifyRecordsOperation setPerRecordProgressBlock:^(CKRecord* _record,
	double _progress)
			{
				
				perRecordProgressBlock(ptr, (__bridge_retained void*) _record, _progress);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}


void CKModifyRecordsOperation_Dispose(void* ptr)
{
    CKModifyRecordsOperation* val = (__bridge CKModifyRecordsOperation*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKModifyRecordsOperation");
}

}
