//
//  CKFetchSubscriptionsOperation.h
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
extern "C" void* CKFetchSubscriptionsOperation_init(
    void** exceptionPtr);

extern "C" void* CKFetchSubscriptionsOperation_initWithSubscriptionIDs(
    const char* subscriptionIDs[],
	long subscriptionIDsCount,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 



extern "C" void CKFetchSubscriptionsOperation_Dispose(void* ptr);
