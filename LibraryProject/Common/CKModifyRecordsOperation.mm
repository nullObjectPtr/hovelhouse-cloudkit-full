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
        if(LogLevel >= LogLevelVerbose)
        {
            NSLog(@"Created new ModifyRecordsOperation with operation id of '%@'", [iCKModifyRecordsOperation operationID]);
        }
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
        
        if(LogLevel >= LogLevelVerbose)
        {
            NSLog(@"Created new ModifyRecordsOperation with operation id of '%@'", [iCKModifyRecordsOperation operationID]);
        }
        
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
    if(LogLevel >= LogLevelVeryVerbose)
    {
        NSLog(@"CKModifyRecordsOperation '%@' - GetPropRecordsToSave", [iCKModifyRecordsOperation operationID]);
    }
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
        if(LogLevel >= LogLevelVeryVerbose)
        {
            NSLog(@"CKModifyRecordsOperation '%@' - SetPropRecordsToSave", [iCKModifyRecordsOperation operationID]);
        }
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
    if(LogLevel >= LogLevelVeryVerbose)
    {
        NSLog(@"CKModifyRecordsOperation '%@' - GetPropRecordIDsToDelete", [iCKModifyRecordsOperation operationID]);
    }
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
        if(LogLevel >= LogLevelVeryVerbose)
        {
            NSLog(@"CKModifyRecordsOperation '%@' - SetPropRecordIDsToDelete", [iCKModifyRecordsOperation operationID]);
        }
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
    if(LogLevel >= LogLevelVeryVerbose)
    {
        NSLog(@"CKModifyRecordsOperation '%@' - GetPropSavePolicy", [iCKModifyRecordsOperation operationID]);
    }
	CKRecordSavePolicy val = [iCKModifyRecordsOperation savePolicy];
	return val;
}

void CKModifyRecordsOperation_SetPropSavePolicy(void* ptr, long savePolicy, void** exceptionPtr)
{
	@try 
	{
		CKModifyRecordsOperation* iCKModifyRecordsOperation = (__bridge CKModifyRecordsOperation*) ptr;
        
        if(LogLevel >= LogLevelVerbose)
        {
            NSLog(@"ModifyRecordsOperation '%@' - SetPropSavePolicy:'%@'", [iCKModifyRecordsOperation operationID],
                  [Converters CKRecordSavePolicyToString:(CKRecordSavePolicy)savePolicy]);
        }
        
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
    if(LogLevel >= LogLevelVeryVerbose)
    {
        NSLog(@"CKModifyRecordsOperation '%@' - GetPropAtomic", [iCKModifyRecordsOperation operationID]);
    }
	BOOL val = [iCKModifyRecordsOperation atomic];
	return val;
}

void CKModifyRecordsOperation_SetPropAtomic(void* ptr, bool atomic, void** exceptionPtr)
{
	@try 
	{
		CKModifyRecordsOperation* iCKModifyRecordsOperation = (__bridge CKModifyRecordsOperation*) ptr;
        if(LogLevel >= LogLevelVerbose)
        {
            NSLog(@"ModifyRecordsOperation '%@' - SetPropAtomic:'%@'", [iCKModifyRecordsOperation operationID], atomic ? @"true" : @"false");
        }
        
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
        __weak CKModifyRecordsOperation* weakOperation = iCKModifyRecordsOperation;
        
        if(LogLevel >= LogLevelVerbose)
        {
            NSLog(@"ModifyRecordsOperation '%@' - SetPropModifyRecordsCompletionBlock", [iCKModifyRecordsOperation operationID]);
        }
        
		[iCKModifyRecordsOperation setModifyRecordsCompletionBlock:^(NSArray<CKRecord*>* _savedRecords,
                                                                     NSArray<CKRecordID*>* _deletedRecordIDs,
                                                                     NSError* _operationError)
			{
                if(LogLevel >= LogLevelLog)
                {
                    NSLog(@"ModifyRecordsOperation '%@' ModifyRecordsCompletionBlock invoked",
                          weakOperation != nil ? [weakOperation operationID] : @""
                          );
                }
            
				long _savedRecordsCount = [_savedRecords count];
                void** _savedRecordsBuffer = (void**) malloc(sizeof(void*) * _savedRecordsCount);
                [Converters NSArrayToRetainedCArray:_savedRecords withBuffer:_savedRecordsBuffer];long _deletedRecordIDsCount = [_deletedRecordIDs count];
                void** _deletedRecordIDsBuffer = (void**) malloc(sizeof(void*) * _deletedRecordIDsCount);
                [Converters NSArrayToRetainedCArray:_deletedRecordIDs withBuffer:_deletedRecordIDsBuffer];
				modifyRecordsCompletionBlock(ptr, _savedRecordsBuffer, _savedRecordsCount, _deletedRecordIDsBuffer, _deletedRecordIDsCount, (__bridge_retained void*) _operationError);
				free(_savedRecordsBuffer);
                free(_deletedRecordIDsBuffer);
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
        
        if(LogLevel >= LogLevelLog)
        {
            NSLog(@"ModifyRecordsOperation '%@' - SetPropPerRecordCompletionBlock", [iCKModifyRecordsOperation operationID]);
        }
        
        __weak CKModifyRecordsOperation* weakOperation = iCKModifyRecordsOperation;
		[iCKModifyRecordsOperation setPerRecordCompletionBlock:^(CKRecord* _record,
	NSError* _error)
			{
                if(LogLevel >= LogLevelVerbose)
                {
                    NSLog(@"ModifyRecordsOperation '%@' PerRecordCompletionBlock invoked",
                          weakOperation != nil ? [weakOperation operationID] : @""
                          );
                }
            
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
        
        if(LogLevel >= LogLevelLog)
        {
            NSLog(@"ModifyRecordsOperation '%@' - SetPropPerRecordProgressBlock", [iCKModifyRecordsOperation operationID]);
        }
        
        __weak CKModifyRecordsOperation* weakOperation = iCKModifyRecordsOperation;
        
		[iCKModifyRecordsOperation setPerRecordProgressBlock:^(CKRecord* _record,
	double _progress)
			{
                if(LogLevel >= LogLevelVeryVerbose)
                {
                    NSLog(@"ModifyRecordsOperation '%@' - PerRecordProgressBlock %@ %f",
                          weakOperation != nil ? [weakOperation operationID] : @"",
                          [_record recordID],
                          _progress);
                }
            
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
    
    if(LogLevel >= LogLevelVeryVerbose)
    {
        NSLog(@"Dispose...CKModifyRecordsOperation %@", [val operationID]);
    }
    
    if(val != nil)
    {
        CFRelease(ptr);
    }
}

}
