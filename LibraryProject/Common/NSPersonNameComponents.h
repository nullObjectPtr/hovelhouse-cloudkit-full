//
//  NSPersonNameComponents.h
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
extern "C" const char* NSPersonNameComponents_GetPropNamePrefix(void* ptr);
extern "C" void NSPersonNameComponents_SetPropNamePrefix(void* ptr, const char* namePrefix, void** exceptionPtr);

extern "C" const char* NSPersonNameComponents_GetPropGivenName(void* ptr);
extern "C" void NSPersonNameComponents_SetPropGivenName(void* ptr, const char* givenName, void** exceptionPtr);

extern "C" const char* NSPersonNameComponents_GetPropMiddleName(void* ptr);
extern "C" void NSPersonNameComponents_SetPropMiddleName(void* ptr, const char* middleName, void** exceptionPtr);

extern "C" const char* NSPersonNameComponents_GetPropFamilyName(void* ptr);
extern "C" void NSPersonNameComponents_SetPropFamilyName(void* ptr, const char* familyName, void** exceptionPtr);

extern "C" const char* NSPersonNameComponents_GetPropNameSuffix(void* ptr);
extern "C" void NSPersonNameComponents_SetPropNameSuffix(void* ptr, const char* nameSuffix, void** exceptionPtr);

extern "C" const char* NSPersonNameComponents_GetPropNickname(void* ptr);
extern "C" void NSPersonNameComponents_SetPropNickname(void* ptr, const char* nickname, void** exceptionPtr);

extern "C" void* NSPersonNameComponents_GetPropPhoneticRepresentation(void* ptr);
extern "C" void NSPersonNameComponents_SetPropPhoneticRepresentation(void* ptr, void* phoneticRepresentation, void** exceptionPtr);




extern "C" void NSPersonNameComponents_Dispose(void* ptr);
