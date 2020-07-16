//
//  CKReference.h
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
extern "C" void* CKReference_initWithRecordID_action(
    void* recordID,
    long action,
    void** exceptionPtr);

extern "C" void* CKReference_initWithRecord_action(
    void* record,
    long action,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" long CKReference_GetPropReferenceAction(void* ptr);
extern "C" void* CKReference_GetPropRecordID(void* ptr);



extern "C" void CKReference_Dispose(void* ptr);
