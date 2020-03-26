//
//  CKSubscription.h
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

// Instance methods 

// Void methods 

// Properties 
extern "C" void* CKSubscription_GetPropNotificationInfo(void* ptr);
extern "C" void CKSubscription_SetPropNotificationInfo(void* ptr, void* notificationInfo, void** exceptionPtr);

extern "C" long CKSubscription_GetPropSubscriptionType(void* ptr);
extern "C" const char* CKSubscription_GetPropSubscriptionID(void* ptr);



extern "C" void CKSubscription_Dispose(void* ptr);
