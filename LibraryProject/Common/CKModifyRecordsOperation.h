//
//  CKModifyRecordsOperation.h
//
//  Created by Jonathan Culp <jonathanculp@gmail.com> on 03/26/2020
//  Copyright © 2020 HovelHouseApps. All rights reserved.
//  Unauthorized copying of this file, via any medium is strictly prohibited
//  Proprietary and confidential
//

#import <Foundation/Foundation.h>
#import "Callbacks.h"

// Class Methods 

// Init Methods 
extern "C" void* CKModifyRecordsOperation_init(
    void** exceptionPtr);

extern "C" void* CKModifyRecordsOperation_initWithRecordsToSave_recordIDsToDelete(
    void* records[],
	long recordsCount,
    void* recordIDs[],
	long recordIDsCount,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" void CKModifyRecordsOperation_GetPropRecordsToSave(void* ptr, void** buffer, long* count);
extern "C" void CKModifyRecordsOperation_SetPropRecordsToSave(void* ptr, void* recordsToSave[],
	long recordsToSaveCount, void** exceptionPtr);

extern "C" void CKModifyRecordsOperation_GetPropRecordIDsToDelete(void* ptr, void** buffer, long* count);
extern "C" void CKModifyRecordsOperation_SetPropRecordIDsToDelete(void* ptr, void* recordIDsToDelete[],
	long recordIDsToDeleteCount, void** exceptionPtr);

extern "C" long CKModifyRecordsOperation_GetPropSavePolicy(void* ptr);
extern "C" void CKModifyRecordsOperation_SetPropSavePolicy(void* ptr, long savePolicy, void** exceptionPtr);

extern "C" bool CKModifyRecordsOperation_GetPropAtomic(void* ptr);
extern "C" void CKModifyRecordsOperation_SetPropAtomic(void* ptr, bool atomic, void** exceptionPtr);
extern "C" void CKModifyRecordsOperation_SetPropModifyRecordsCompletionBlock(void* ptr, modifyRecordsCompletionCallback modifyRecordsCompletionBlock, void** exceptionPtr);
extern "C" void CKModifyRecordsOperation_SetPropPerRecordCompletionBlock(void* ptr, perRecordCompletionCallback perRecordCompletionBlock, void** exceptionPtr);
extern "C" void CKModifyRecordsOperation_SetPropPerRecordProgressBlock(void* ptr, perRecordProgressCallback perRecordProgressBlock, void** exceptionPtr);




extern "C" void CKModifyRecordsOperation_Dispose(void* ptr);
