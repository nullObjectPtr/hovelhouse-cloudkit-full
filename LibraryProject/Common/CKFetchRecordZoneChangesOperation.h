//
//  CKFetchRecordZoneChangesOperation.h
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
extern "C" void* CKFetchRecordZoneChangesOperation_init(
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties extern "C" void CKFetchRecordZoneChangesOperation_SetPropRecordChangedHandler(void* ptr, recordChangedCallback recordChangedHandler, void** exceptionPtr);
extern "C" void CKFetchRecordZoneChangesOperation_SetPropFetchRecordZoneChangesCompletionHandler(void* ptr, fetchRecordZoneChangesCompletionCallback fetchRecordZoneChangesCompletionHandler, void** exceptionPtr);
extern "C" void CKFetchRecordZoneChangesOperation_SetPropRecordWithIDWasDeletedHandler(void* ptr, recordWithIDWasDeletedCallback recordWithIDWasDeletedHandler, void** exceptionPtr);

extern "C" bool CKFetchRecordZoneChangesOperation_GetPropFetchAllChanges(void* ptr);
extern "C" void CKFetchRecordZoneChangesOperation_SetPropFetchAllChanges(void* ptr, bool fetchAllChanges, void** exceptionPtr);

extern "C" void CKFetchRecordZoneChangesOperation_GetPropRecordZoneIDs(void* ptr, void** buffer, long* count);
extern "C" void CKFetchRecordZoneChangesOperation_SetPropRecordZoneIDs(void* ptr, void* recordZoneIDs[],
	long recordZoneIDsCount, void** exceptionPtr);




extern "C" void CKFetchRecordZoneChangesOperation_Dispose(void* ptr);
