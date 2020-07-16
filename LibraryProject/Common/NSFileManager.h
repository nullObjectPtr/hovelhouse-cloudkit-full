//
//  NSFileManager.h
//
//  Created by Jonathan Culp <jonathanculp@gmail.com> on 05/28/2020
//  Copyright © 2020 HovelHouseApps. All rights reserved.
//  Unauthorized copying of this file, via any medium is strictly prohibited
//  Proprietary and confidential
//

#import <Foundation/Foundation.h>
#import "Callbacks.h"

// Class Methods 
extern "C" void* NSFileManager_defaultManager(
	void** exception
    );


// Init Methods 

// Instance methods 
extern "C" void* NSFileManager_URLForUbiquityContainerIdentifier(
	void* ptr,
	const char* containerIdentifier,
    void** exception
    );

extern "C" bool NSFileManager_isUbiquitousItemAtURL(
	void* ptr,
	void* url,
    void** exception
    );

extern "C" bool NSFileManager_startDownloadingUbiquitousItemAtURL_error(
    void* ptr,
    void* url,
    void** error,
    void** exception
    );
extern "C" bool NSFileManager_evictUbiquitousItemAtURL_error(
    void* ptr,
    void* url,
    void** error,
    void** exception
    );
extern "C" bool NSFileManager_setUbiquitous_itemAtURL_destinationURL_error(
    void* ptr,
    bool flag,
    void* url,
    void* destinationURL,
    void** error,
    void** exception
    );

// Void methods 

// Properties 
extern "C" void* NSFileManager_GetPropUbiquityIdentityToken(void* ptr);



extern "C" void NSFileManager_Dispose(void* ptr);
