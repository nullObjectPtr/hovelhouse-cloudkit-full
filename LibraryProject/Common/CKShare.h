//
//  CKShare.h
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
extern "C" void* CKShare_initWithCoder(
    void* aDecoder,
    void** exceptionPtr);

extern "C" void* CKShare_initWithRootRecord(
    void* rootRecord,
    void** exceptionPtr);

extern "C" void* CKShare_initWithRootRecord_shareID(
    void* rootRecord,
    void* shareID,
    void** exceptionPtr);


// Instance methods 
extern "C" void CKShare_addParticipant(
	void* ptr,
	void* participant,
    void** exception
    );

extern "C" void CKShare_removeParticipant(
	void* ptr,
	void* participant,
    void** exception
    );


// Void methods 

// Properties 
extern "C" long CKShare_GetPropPublicPermission(void* ptr);
extern "C" void CKShare_SetPropPublicPermission(void* ptr, long publicPermission, void** exceptionPtr);

extern "C" void* CKShare_GetPropURL(void* ptr);
extern "C" void* CKShare_GetPropCurrentUserParticipant(void* ptr);
extern "C" void* CKShare_GetPropOwner(void* ptr);
extern "C" void CKShare_GetPropParticipants(void* ptr, void** buffer, long* count);



extern "C" void CKShare_Dispose(void* ptr);
