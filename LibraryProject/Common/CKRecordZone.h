//
//  CKRecordZone.h
//
//  Created by Jonathan Culp <jonathanculp@gmail.com> on 05/28/2020
//  Copyright © 2020 HovelHouseApps. All rights reserved.
//  Unauthorized copying of this file, via any medium is strictly prohibited
//  Proprietary and confidential
//

#import <Foundation/Foundation.h>
#import "Callbacks.h"

// Class Methods 
extern "C" void* CKRecordZone_defaultRecordZone(
	void** exception
    );


// Init Methods 
extern "C" void* CKRecordZone_initWithZoneName(
    const char* zoneName,
    void** exceptionPtr);

extern "C" void* CKRecordZone_initWithZoneID(
    void* zoneID,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" void* CKRecordZone_GetPropZoneID(void* ptr);
extern "C" long CKRecordZone_GetPropCapabilities(void* ptr);



extern "C" void CKRecordZone_Dispose(void* ptr);
