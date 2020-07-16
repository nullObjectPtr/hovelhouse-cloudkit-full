//
//  CKNotificationInfo.h
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
extern "C" void* CKNotificationInfo_init(
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" const char* CKNotificationInfo_GetPropCollapseIDKey(void* ptr);
extern "C" void CKNotificationInfo_SetPropCollapseIDKey(void* ptr, const char* collapseIDKey, void** exceptionPtr);

extern "C" bool CKNotificationInfo_GetPropShouldBadge(void* ptr);
extern "C" void CKNotificationInfo_SetPropShouldBadge(void* ptr, bool shouldBadge, void** exceptionPtr);

extern "C" bool CKNotificationInfo_GetPropShouldSendContentAvailable(void* ptr);
extern "C" void CKNotificationInfo_SetPropShouldSendContentAvailable(void* ptr, bool shouldSendContentAvailable, void** exceptionPtr);

extern "C" bool CKNotificationInfo_GetPropShouldSendMutableContent(void* ptr);
extern "C" void CKNotificationInfo_SetPropShouldSendMutableContent(void* ptr, bool shouldSendMutableContent, void** exceptionPtr);
// TODO: HEADERPROPERTYSTRINGARRAY



extern "C" void CKNotificationInfo_Dispose(void* ptr);
