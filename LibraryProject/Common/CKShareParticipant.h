//
//  CKShareParticipant.h
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
extern "C" long CKShareParticipant_GetPropAcceptanceStatus(void* ptr);
extern "C" long CKShareParticipant_GetPropPermission(void* ptr);
extern "C" void CKShareParticipant_SetPropPermission(void* ptr, long permission, void** exceptionPtr);

extern "C" void* CKShareParticipant_GetPropUserIdentity(void* ptr);
extern "C" long CKShareParticipant_GetPropRole(void* ptr);
extern "C" void CKShareParticipant_SetPropRole(void* ptr, long role, void** exceptionPtr);




extern "C" void CKShareParticipant_Dispose(void* ptr);
