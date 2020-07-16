//
//  CKAcceptSharesOperation.h
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
extern "C" void* CKAcceptSharesOperation_init(
    void** exceptionPtr);

extern "C" void* CKAcceptSharesOperation_initWithShareMetadatas(
    void* shareMetadatas[],
	long shareMetadatasCount,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" void CKAcceptSharesOperation_GetPropShareMetadatas(void* ptr, void** buffer, long* count);
extern "C" void CKAcceptSharesOperation_SetPropShareMetadatas(void* ptr, void* shareMetadatas[],
	long shareMetadatasCount, void** exceptionPtr);
extern "C" void CKAcceptSharesOperation_SetPropAcceptSharesHandler(void* ptr, acceptSharesCompletionCallback acceptSharesHandler, void** exceptionPtr);
extern "C" void CKAcceptSharesOperation_SetPropPerShareCompletionHandler(void* ptr, perShareCompletionCallback perShareCompletionHandler, void** exceptionPtr);




extern "C" void CKAcceptSharesOperation_Dispose(void* ptr);
