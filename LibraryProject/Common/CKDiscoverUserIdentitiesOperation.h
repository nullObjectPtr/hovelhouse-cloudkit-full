//
//  CKDiscoverUserIdentitiesOperation.h
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
extern "C" void* CKDiscoverUserIdentitiesOperation_init(
    void** exceptionPtr);

extern "C" void* CKDiscoverUserIdentitiesOperation_initWithUserIdentityLookupInfos(
    void* userIdentityLookupInfos[],
	long userIdentityLookupInfosCount,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" void CKDiscoverUserIdentitiesOperation_GetPropUserIdentityLookupInfos(void* ptr, void** buffer, long* count);
extern "C" void CKDiscoverUserIdentitiesOperation_SetPropUserIdentityLookupInfos(void* ptr, void* userIdentityLookupInfos[],
	long userIdentityLookupInfosCount, void** exceptionPtr);
extern "C" void CKDiscoverUserIdentitiesOperation_SetPropUserIdentityDiscoveredHandler(void* ptr, userIdentityDiscoveredCallback userIdentityDiscoveredHandler, void** exceptionPtr);
extern "C" void CKDiscoverUserIdentitiesOperation_SetPropDiscoverUserIdentitiesCompletionHandler(void* ptr, discoverUserIdentitiesCompletionCallback discoverUserIdentitiesCompletionHandler, void** exceptionPtr);




extern "C" void CKDiscoverUserIdentitiesOperation_Dispose(void* ptr);
