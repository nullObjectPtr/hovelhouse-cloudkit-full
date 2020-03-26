//
//  CKModifyRecordZonesOperation.h
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
extern "C" void* CKModifyRecordZonesOperation_init(
    void** exceptionPtr);

extern "C" void* CKModifyRecordZonesOperation_initWithRecordZonesToSave_recordZoneIDsToDelete(
    void* recordZonesToSave[],
	long recordZonesToSaveCount,
    void* recordZoneIDsToDelete[],
	long recordZoneIDsToDeleteCount,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties extern "C" void CKModifyRecordZonesOperation_SetPropModifyRecordZonesCompletionHandler(void* ptr, modifyRecordZonesCompletionCallback modifyRecordZonesCompletionHandler, void** exceptionPtr);

extern "C" void CKModifyRecordZonesOperation_GetPropRecordZonesToSave(void* ptr, void** buffer, long* count);
extern "C" void CKModifyRecordZonesOperation_SetPropRecordZonesToSave(void* ptr, void* recordZonesToSave[],
	long recordZonesToSaveCount, void** exceptionPtr);

extern "C" void CKModifyRecordZonesOperation_GetPropRecordZoneIDsToDelete(void* ptr, void** buffer, long* count);
extern "C" void CKModifyRecordZonesOperation_SetPropRecordZoneIDsToDelete(void* ptr, void* recordZoneIDsToDelete[],
	long recordZoneIDsToDeleteCount, void** exceptionPtr);




extern "C" void CKModifyRecordZonesOperation_Dispose(void* ptr);
