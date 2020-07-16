//
//  CKDatabaseSubscription.h
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
extern "C" void* CKDatabaseSubscription_init(
    void** exceptionPtr);

extern "C" void* CKDatabaseSubscription_initWithSubscriptionID(
    const char* subscriptionID,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" const char* CKDatabaseSubscription_GetPropRecordType(void* ptr);
extern "C" void CKDatabaseSubscription_SetPropRecordType(void* ptr, const char* recordType, void** exceptionPtr);




extern "C" void CKDatabaseSubscription_Dispose(void* ptr);
