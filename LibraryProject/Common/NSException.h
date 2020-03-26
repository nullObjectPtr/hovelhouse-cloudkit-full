//
//  NSException.h
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
extern "C" const char* NSException_GetPropName(void* ptr);
extern "C" const char* NSException_GetPropReason(void* ptr);// TODO: HEADERPROPERTYSTRINGARRAY



extern "C" void NSException_Dispose(void* ptr);
