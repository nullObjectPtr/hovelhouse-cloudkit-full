//
//  CKDatabaseOperation.h
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
extern "C" void* CKDatabaseOperation_GetPropDatabase(void* ptr);
extern "C" void CKDatabaseOperation_SetPropDatabase(void* ptr, void* database, void** exceptionPtr);




extern "C" void CKDatabaseOperation_Dispose(void* ptr);
