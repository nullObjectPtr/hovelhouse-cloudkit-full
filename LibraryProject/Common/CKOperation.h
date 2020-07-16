//
//  CKOperation.h
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
extern "C" void* CKOperation_GetPropConfiguration(void* ptr);
extern "C" void CKOperation_SetPropConfiguration(void* ptr, void* configuration, void** exceptionPtr);

extern "C" const char* CKOperation_GetPropOperationID(void* ptr);
extern "C" void* CKOperation_GetPropGroup(void* ptr);
extern "C" void CKOperation_SetPropGroup(void* ptr, void* group, void** exceptionPtr);




extern "C" void CKOperation_Dispose(void* ptr);
