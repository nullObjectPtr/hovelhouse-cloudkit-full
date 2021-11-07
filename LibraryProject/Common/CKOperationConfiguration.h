//
//  CKOperationConfiguration.h
//
//  Created by Jonathan Culp <jonathanculp@gmail.com> on 09/23/2020
//  Copyright © 2021 HovelHouseApps. All rights reserved.
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

extern "C" bool CKOperationConfiguration_GetPropLongLived(const void* ptr);
extern "C" void CKOperationConfiguration_SetPropLongLived(const void* ptr, bool longLived, const void** exceptionPtr);



extern "C" double CKOperationConfiguration_GetPropTimeoutIntervalForRequest(const void* ptr);
extern "C" void CKOperationConfiguration_SetPropTimeoutIntervalForRequest(const void* ptr, double timeoutIntervalForRequest, const void** exceptionPtr);



extern "C" double CKOperationConfiguration_GetPropTimeoutIntervalForResource(const void* ptr);
extern "C" void CKOperationConfiguration_SetPropTimeoutIntervalForResource(const void* ptr, double timeoutIntervalForResource, const void** exceptionPtr);



extern "C" bool CKOperationConfiguration_GetPropAllowsCellularAccess(const void* ptr);
extern "C" void CKOperationConfiguration_SetPropAllowsCellularAccess(const void* ptr, bool allowsCellularAccess, const void** exceptionPtr);



extern "C" void* CKOperationConfiguration_GetPropContainer(const void* ptr);
extern "C" void CKOperationConfiguration_SetPropContainer(const void* ptr, void* container, const void** exceptionPtr);



extern "C" long CKOperationConfiguration_GetPropQualityOfService(const void* ptr);
extern "C" void CKOperationConfiguration_SetPropQualityOfService(const void* ptr, long qualityOfService, const void** exceptionPtr);





extern "C" void CKOperationConfiguration_Dispose(void* ptr);
