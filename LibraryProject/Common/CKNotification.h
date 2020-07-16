//
//  CKNotification.h
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

// Instance methods 

// Void methods 

// Properties 
extern "C" void* CKNotification_GetPropNotificationID(void* ptr);
extern "C" long CKNotification_GetPropNotificationType(void* ptr);
extern "C" const char* CKNotification_GetPropContainerIdentifier(void* ptr);
extern "C" bool CKNotification_GetPropIsPruned(void* ptr);
extern "C" const char* CKNotification_GetPropSubscriptionID(void* ptr);



extern "C" void CKNotification_Dispose(void* ptr);
