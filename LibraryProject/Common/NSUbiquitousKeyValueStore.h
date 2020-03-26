//
//  NSUbiquitousKeyValueStore.h
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
extern "C" bool NSUbiquitousKeyValueStore_boolForKey(
	void* ptr,
	const char* aKey,
    void** exception
    );

extern "C" long NSUbiquitousKeyValueStore_longLongForKey(
	void* ptr,
	const char* aKey,
    void** exception
    );

extern "C" double NSUbiquitousKeyValueStore_doubleForKey(
	void* ptr,
	const char* aKey,
    void** exception
    );

extern "C" const char* NSUbiquitousKeyValueStore_stringForKey(
	void* ptr,
	const char* aKey,
    void** exception
    );

extern "C" void NSUbiquitousKeyValueStore_setBool_forKey(
	void* ptr,
	bool value,
    const char* aKey,
    void** exception
    );

extern "C" void NSUbiquitousKeyValueStore_setDouble_forKey(
	void* ptr,
	double value,
    const char* aKey,
    void** exception
    );

extern "C" void NSUbiquitousKeyValueStore_setLongLong_forKey(
	void* ptr,
	long value,
    const char* aKey,
    void** exception
    );

extern "C" void NSUbiquitousKeyValueStore_setString_forKey(
	void* ptr,
	const char* aString,
    const char* aKey,
    void** exception
    );

extern "C" void NSUbiquitousKeyValueStore_removeObjectForKey(
	void* ptr,
	const char* aKey,
    void** exception
    );

extern "C" bool NSUbiquitousKeyValueStore_synchronize(
	void* ptr,
	void** exception
    );

extern "C" void NSUbiquitousKeyValueStore_bufferForKey(
    void* ptr,
    const char* key,
    const void** buffer,
    unsigned long* length,
    void** exception
    );
extern "C" void* AddNSUbiquitousKeyValueStoreDidChangeExternallyNotificationObserver(NSUbiquitousKeyValueStoreDidChangeExternallyCallback myhandler);
extern "C" void RemoveNSUbiquitousKeyValueStoreDidChangeExternallyNotificationObserver(void* ptr);

// Void methods 

// Properties 
extern "C" void* NSUbiquitousKeyValueStore_GetPropDefaultStore();



extern "C" void NSUbiquitousKeyValueStore_Dispose(void* ptr);
