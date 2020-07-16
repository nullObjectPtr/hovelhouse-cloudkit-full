//
//  CKFetchShareParticipantsOperation.h
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
extern "C" void* CKFetchShareParticipantsOperation_init(
    void** exceptionPtr);

extern "C" void* CKFetchShareParticipantsOperation_initWithUserIdentityLookupInfos(
    void* userIdentityLookupInfos[],
	long userIdentityLookupInfosCount,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" void CKFetchShareParticipantsOperation_GetPropUserIdentityLookupInfos(void* ptr, void** buffer, long* count);
extern "C" void CKFetchShareParticipantsOperation_SetPropUserIdentityLookupInfos(void* ptr, void* userIdentityLookupInfos[],
	long userIdentityLookupInfosCount, void** exceptionPtr);
extern "C" void CKFetchShareParticipantsOperation_SetPropFetchShareParticipantsCompletionHandler(void* ptr, fetchShareParticipantsCompletionCallback fetchShareParticipantsCompletionHandler, void** exceptionPtr);
extern "C" void CKFetchShareParticipantsOperation_SetPropShareParticipantFetchedHandler(void* ptr, shareParticipantFetchedCallback shareParticipantFetchedHandler, void** exceptionPtr);




extern "C" void CKFetchShareParticipantsOperation_Dispose(void* ptr);
