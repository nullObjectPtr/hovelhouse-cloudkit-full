//
//  NSError.h
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
extern "C" NSInteger NSError_GetPropCode(void* ptr);
extern "C" const char* NSError_GetPropLocalizedDescription(void* ptr);
extern "C" const char* NSError_GetPropLocalizedRecoverySuggestion(void* ptr);
extern "C" const char* NSError_GetPropLocalizedFailureReason(void* ptr);
extern "C" const char* NSError_GetPropHelpAnchor(void* ptr);// TODO: HEADERPROPERTYSTRINGARRAY
extern "C" const char* NSError_GetPropDomain(void* ptr);



extern "C" void NSError_Dispose(void* ptr);
