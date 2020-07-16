//
//  CKQuery.h
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
extern "C" void* CKQuery_initWithRecordType_predicate(
    const char* recordType,
    void* predicate,
    void** exceptionPtr);

extern "C" void* CKQuery_initWithCoder(
    void* aDecoder,
    void** exceptionPtr);


// Instance methods 

// Void methods 

// Properties 
extern "C" void CKQuery_GetPropSortDescriptors(void* ptr, void** buffer, long* count);
extern "C" void CKQuery_SetPropSortDescriptors(void* ptr, void* sortDescriptors[],
	long sortDescriptorsCount, void** exceptionPtr);

extern "C" const char* CKQuery_GetPropRecordType(void* ptr);
extern "C" void* CKQuery_GetPropPredicate(void* ptr);



extern "C" void CKQuery_Dispose(void* ptr);
