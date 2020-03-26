//
//  CKQueryOperation.h
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
extern "C" void* CKQueryOperation_init(
    void** exceptionPtr);

extern "C" void* CKQueryOperation_initWithQuery(
    void* query,
    void** exceptionPtr);

extern "C" void* CKQueryOperation_initWithCursor(
    void* cursor,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" void* CKQueryOperation_GetPropQuery(void* ptr);
extern "C" void CKQueryOperation_SetPropQuery(void* ptr, void* query, void** exceptionPtr);

extern "C" void* CKQueryOperation_GetPropCursor(void* ptr);
extern "C" void CKQueryOperation_SetPropCursor(void* ptr, void* cursor, void** exceptionPtr);

extern "C" void* CKQueryOperation_GetPropZoneID(void* ptr);
extern "C" void CKQueryOperation_SetPropZoneID(void* ptr, void* zoneID, void** exceptionPtr);
// TODO: HEADERPROPERTYSTRINGARRAYextern "C" void CKQueryOperation_SetPropRecordFetchedHandler(void* ptr, recordFetchedCallback recordFetchedHandler, void** exceptionPtr);
extern "C" void CKQueryOperation_SetPropQueryCompletionHandler(void* ptr, queryCompletionCallback queryCompletionHandler, void** exceptionPtr);




extern "C" void CKQueryOperation_Dispose(void* ptr);
