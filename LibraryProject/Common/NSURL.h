//
//  NSURL.h
//
//  Created by Jonathan Culp <jonathanculp@gmail.com> on 05/28/2020
//  Copyright © 2020 HovelHouseApps. All rights reserved.
//  Unauthorized copying of this file, via any medium is strictly prohibited
//  Proprietary and confidential
//

#import <Foundation/Foundation.h>
#import "Callbacks.h"

// Class Methods 
extern "C" void* NSURL_URLWithString(
	const char* URLString,
    void** exception
    );

extern "C" void* NSURL_fileURLWithPath(
	const char* path,
    void** exception
    );


// Init Methods 

// Instance methods 

// Void methods 

// Properties 
extern "C" const char* NSURL_GetPropAbsoluteString(void* ptr);



extern "C" void NSURL_Dispose(void* ptr);
