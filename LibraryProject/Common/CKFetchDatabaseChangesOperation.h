//
//  CKFetchDatabaseChangesOperation.h
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
extern "C" void* CKFetchDatabaseChangesOperation_init(
    void** exceptionPtr);

extern "C" void* CKFetchDatabaseChangesOperation_initWithPreviousServerChangeToken(
    void* previousServerChangeToken,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties extern "C" void CKFetchDatabaseChangesOperation_SetPropChangeTokenUpdatedHandler(void* ptr, changeTokenUpdatedCallback changeTokenUpdatedHandler, void** exceptionPtr);
extern "C" void CKFetchDatabaseChangesOperation_SetPropFetchDatabaseChangesCompletionHandler(void* ptr, fetchDatabaseChangesCompletionCallback fetchDatabaseChangesCompletionHandler, void** exceptionPtr);
extern "C" void CKFetchDatabaseChangesOperation_SetPropRecordZoneWithIDChangedHandler(void* ptr, recordZoneWithIDChangedCallback recordZoneWithIDChangedHandler, void** exceptionPtr);
extern "C" void CKFetchDatabaseChangesOperation_SetPropRecordZoneWithIDWasDeletedHandler(void* ptr, recordZoneWithIDWasDeletedCallback recordZoneWithIDWasDeletedHandler, void** exceptionPtr);
extern "C" void CKFetchDatabaseChangesOperation_SetPropRecordZoneWithIDWasPurgedHandler(void* ptr, recordZoneWithIDWasPurgedCallback recordZoneWithIDWasPurgedHandler, void** exceptionPtr);

extern "C" void* CKFetchDatabaseChangesOperation_GetPropPreviousServerChangeToken(void* ptr);
extern "C" void CKFetchDatabaseChangesOperation_SetPropPreviousServerChangeToken(void* ptr, void* previousServerChangeToken, void** exceptionPtr);

extern "C" bool CKFetchDatabaseChangesOperation_GetPropFetchAllChanges(void* ptr);
extern "C" void CKFetchDatabaseChangesOperation_SetPropFetchAllChanges(void* ptr, bool fetchAllChanges, void** exceptionPtr);

extern "C" uint CKFetchDatabaseChangesOperation_GetPropResultsLimit(void* ptr);
extern "C" void CKFetchDatabaseChangesOperation_SetPropResultsLimit(void* ptr, uint resultsLimit, void** exceptionPtr);




extern "C" void CKFetchDatabaseChangesOperation_Dispose(void* ptr);
