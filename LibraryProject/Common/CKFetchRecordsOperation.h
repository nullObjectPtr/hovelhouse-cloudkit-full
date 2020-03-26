//
//  CKFetchRecordsOperation.h
//
//  Created by Jonathan Culp <jonathanculp@gmail.com> on 03/26/2020
//  Copyright © 2020 HovelHouseApps. All rights reserved.
//  Unauthorized copying of this file, via any medium is strictly prohibited
//  Proprietary and confidential
//

#import <Foundation/Foundation.h>
#import "Callbacks.h"

// Class Methods 
extern "C" void* CKFetchRecordsOperation_fetchCurrentUserRecordOperation(
	void** exception
    );


// Init Methods 
extern "C" void* CKFetchRecordsOperation_init(
    void** exceptionPtr);

extern "C" void* CKFetchRecordsOperation_initWithRecordIDs(
    void* recordIDs[],
	long recordIDsCount,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" void CKFetchRecordsOperation_GetPropRecordIDs(void* ptr, void** buffer, long* count);
extern "C" void CKFetchRecordsOperation_SetPropRecordIDs(void* ptr, void* recordIDs[],
	long recordIDsCount, void** exceptionPtr);
// TODO: HEADERPROPERTYSTRINGARRAYextern "C" void CKFetchRecordsOperation_SetPropFetchRecordsCompletionHandler(void* ptr, fetchRecordsCompletionCallback fetchRecordsCompletionHandler, void** exceptionPtr);
extern "C" void CKFetchRecordsOperation_SetPropPerRecordCompletionHandler(void* ptr, perRecordCompletionCallback2 perRecordCompletionHandler, void** exceptionPtr);
extern "C" void CKFetchRecordsOperation_SetPropProgressHandler(void* ptr, perRecordProgressCallback2 progressHandler, void** exceptionPtr);




extern "C" void CKFetchRecordsOperation_Dispose(void* ptr);
