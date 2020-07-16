//
//  CKQuerySubscription.h
//
//  Created by Jonathan Culp <jonathanculp@gmail.com> on 05/28/2020
//  Copyright © 2020 HovelHouseApps. All rights reserved.
//  Unauthorized copying of this file, via any medium is strictly prohibited
//  Proprietary and confidential
//

#import <Foundation/Foundation.h>
#import "Callbacks.h"

// Class Methods 

// Init Methods 
extern "C" void* CKQuerySubscription_initWithRecordType_predicate_options(
    const char* recordType,
    void* predicate,
    long querySubscriptionOptions,
    void** exceptionPtr);

extern "C" void* CKQuerySubscription_initWithRecordType_predicate_subscriptionID_options(
    const char* recordType,
    void* predicate,
    const char* subscriptionID,
    long querySubscriptionOptions,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" void* CKQuerySubscription_GetPropPredicate(void* ptr);
extern "C" long CKQuerySubscription_GetPropQuerySubscriptionOptions(void* ptr);
extern "C" const char* CKQuerySubscription_GetPropRecordType(void* ptr);
extern "C" void* CKQuerySubscription_GetPropZoneID(void* ptr);
extern "C" void CKQuerySubscription_SetPropZoneID(void* ptr, void* zoneID, void** exceptionPtr);




extern "C" void CKQuerySubscription_Dispose(void* ptr);
