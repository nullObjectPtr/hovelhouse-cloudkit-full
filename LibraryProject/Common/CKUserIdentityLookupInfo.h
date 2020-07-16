//
//  CKUserIdentityLookupInfo.h
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
extern "C" void* CKUserIdentityLookupInfo_initWithEmailAddress(
    const char* emailAddress,
    void** exceptionPtr);

extern "C" void* CKUserIdentityLookupInfo_initWithUserRecordID(
    void* userRecordID,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" const char* CKUserIdentityLookupInfo_GetPropEmailAddress(void* ptr);
extern "C" const char* CKUserIdentityLookupInfo_GetPropPhoneNumber(void* ptr);
extern "C" void* CKUserIdentityLookupInfo_GetPropUserRecordID(void* ptr);



extern "C" void CKUserIdentityLookupInfo_Dispose(void* ptr);
