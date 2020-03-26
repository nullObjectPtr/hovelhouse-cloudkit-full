//
//  CKRecordID.h
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
extern "C" void* CKRecordID_initWithRecordName(
    const char* recordName,
    void** exceptionPtr);

extern "C" void* CKRecordID_initWithRecordName_zoneID(
    const char* recordName,
    void* zoneID,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" const char* CKRecordID_GetPropRecordName(void* ptr);
extern "C" void* CKRecordID_GetPropZoneID(void* ptr);



extern "C" void CKRecordID_Dispose(void* ptr);
