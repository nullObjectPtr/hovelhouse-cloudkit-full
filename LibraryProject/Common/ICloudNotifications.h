//
//  ICloudNotifications.h
//
//  Created by Jonathan Culp <jonathanculp@gmail.com> on 05/28/2020
//  Copyright © 2020 HovelHouseApps. All rights reserved.
//  Unauthorized copying of this file, via any medium is strictly prohibited
//  Proprietary and confidential
//

#import <Foundation/Foundation.h>
#import <UserNotifications/UserNotifications.h>
#import "Callbacks.h"

// Class Methods 
extern "C" void SetNotificationHandler(CKNotificationHandler myhandler);
extern "C" void OnRemoteNotification(CKNotification* notification);

static CKNotificationHandler myCKNotificationHandler;

// Init Methods 

// Instance methods 

// Void methods 

// Properties 



extern "C" void* AddNSUbiquityIdentityDidChangeNotificationObserver(NotificationHandler myhandler, void** exceptionPtr);

extern "C" void RemoveNSUbiquityIdentityDidChangeNotificationObserver(void* observerPtr, void** exceptionPtr);


