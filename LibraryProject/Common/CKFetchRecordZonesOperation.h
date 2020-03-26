//
//  CKFetchRecordZonesOperation.h
//
//  Created by Jonathan Culp <jonathanculp@gmail.com> on 03/26/2020
//  Copyright © 2020 HovelHouseApps. All rights reserved.
//  Unauthorized copying of this file, via any medium is strictly prohibited
//  Proprietary and confidential
//

#import <Foundation/Foundation.h>
#import "Callbacks.h"

// Class Methods 
extern "C" void* CKFetchRecordZonesOperation_fetchAllRecordZonesOperation(
	void** exception
    );


// Init Methods 
extern "C" void* CKFetchRecordZonesOperation_init(
    void** exceptionPtr);

extern "C" void* CKFetchRecordZonesOperation_initWithRecordZoneIDs(
    void* zoneIDs[],
	long zoneIDsCount,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" void CKFetchRecordZonesOperation_GetPropRecordZoneIDs(void* ptr, void** buffer, long* count);
extern "C" void CKFetchRecordZonesOperation_SetPropRecordZoneIDs(void* ptr, void* recordZoneIDs[],
	long recordZoneIDsCount, void** exceptionPtr);
extern "C" void CKFetchRecordZonesOperation_SetPropFetchRecordZonesCompletionHandler(void* ptr, fetchRecordZonesCompletionCallback fetchRecordZonesCompletionHandler, void** exceptionPtr);




extern "C" void CKFetchRecordZonesOperation_Dispose(void* ptr);
