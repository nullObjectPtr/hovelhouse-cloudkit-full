//
//  CKOperationConfiguration.h
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
extern "C" bool CKOperationConfiguration_GetPropAllowsCellularAccess(void* ptr);
extern "C" void CKOperationConfiguration_SetPropAllowsCellularAccess(void* ptr, bool allowsCellularAccess, void** exceptionPtr);

extern "C" void* CKOperationConfiguration_GetPropContainer(void* ptr);
extern "C" void CKOperationConfiguration_SetPropContainer(void* ptr, void* container, void** exceptionPtr);

extern "C" long CKOperationConfiguration_GetPropQualityOfService(void* ptr);
extern "C" void CKOperationConfiguration_SetPropQualityOfService(void* ptr, long qualityOfService, void** exceptionPtr);




extern "C" void CKOperationConfiguration_Dispose(void* ptr);
