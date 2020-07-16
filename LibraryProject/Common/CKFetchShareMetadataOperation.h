//
//  CKFetchShareMetadataOperation.h
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
extern "C" void* CKFetchShareMetadataOperation_init(
    void** exceptionPtr);

extern "C" void* CKFetchShareMetadataOperation_initWithShareURLs(
    void* shareURLs[],
	long shareURLsCount,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" bool CKFetchShareMetadataOperation_GetPropShouldFetchRootRecord(void* ptr);
extern "C" void CKFetchShareMetadataOperation_SetPropShouldFetchRootRecord(void* ptr, bool shouldFetchRootRecord, void** exceptionPtr);
// TODO: HEADERPROPERTYSTRINGARRAY
extern "C" void CKFetchShareMetadataOperation_GetPropShareURLs(void* ptr, void** buffer, long* count);
extern "C" void CKFetchShareMetadataOperation_SetPropShareURLs(void* ptr, void* shareURLs[],
	long shareURLsCount, void** exceptionPtr);
extern "C" void CKFetchShareMetadataOperation_SetPropFetchShareMetadataCompletionHandler(void* ptr, fetchShareMetadataCompletionCallback fetchShareMetadataCompletionHandler, void** exceptionPtr);
extern "C" void CKFetchShareMetadataOperation_SetPropPerShareMetadataHandler(void* ptr, perShareMetadataCallback perShareMetadataHandler, void** exceptionPtr);




extern "C" void CKFetchShareMetadataOperation_Dispose(void* ptr);
