//
//  NSUbiquitousKeyValueStore.h
//
//  Created by Jonathan Culp <jonathanculp@gmail.com> on 03/10/2020
//  Copyright © 2020 HovelHouseApps. All rights reserved.
//  Unauthorized copying of this file, via any medium is strictly prohibited
//  Proprietary and confidential
//

#import <Foundation/Foundation.h>
#import "Callbacks.h"

extern "C" bool UbiquityIdentityToken_isEqual(
	void* lhs,
    void* rhs,
    );

extern "C" void UbiquityIdentityToken_Dispose(void* ptr);
