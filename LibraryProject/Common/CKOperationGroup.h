//
//  CKOperationGroup.h
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
extern "C" void* CKOperationGroup_init(
    void** exceptionPtr);

extern "C" void* CKOperationGroup_initWithCoder(
    void* aDecoder,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" void* CKOperationGroup_GetPropDefaultConfiguration(void* ptr);
extern "C" void CKOperationGroup_SetPropDefaultConfiguration(void* ptr, void* defaultConfiguration, void** exceptionPtr);

extern "C" long CKOperationGroup_GetPropExpectedReceiveSize(void* ptr);
extern "C" void CKOperationGroup_SetPropExpectedReceiveSize(void* ptr, long expectedReceiveSize, void** exceptionPtr);

extern "C" long CKOperationGroup_GetPropExpectedSendSize(void* ptr);
extern "C" void CKOperationGroup_SetPropExpectedSendSize(void* ptr, long expectedSendSize, void** exceptionPtr);

extern "C" const char* CKOperationGroup_GetPropName(void* ptr);
extern "C" void CKOperationGroup_SetPropName(void* ptr, const char* name, void** exceptionPtr);

extern "C" const char* CKOperationGroup_GetPropOperationGroupID(void* ptr);
extern "C" uint CKOperationGroup_GetPropQuantity(void* ptr);
extern "C" void CKOperationGroup_SetPropQuantity(void* ptr, uint quantity, void** exceptionPtr);




extern "C" void CKOperationGroup_Dispose(void* ptr);
