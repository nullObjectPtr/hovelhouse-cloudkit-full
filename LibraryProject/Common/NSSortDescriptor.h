//
//  NSSortDescriptor.h
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
extern "C" void* NSSortDescriptor_initWithCoder(
    void* coder,
    void** exceptionPtr);


// Instance methods 

// Void methods 
extern "C" void NSSortDescriptor_allowEvaluation(
	void* ptr,
	void** exception
    );


// Properties 
extern "C" bool NSSortDescriptor_GetPropAscending(void* ptr);
extern "C" const char* NSSortDescriptor_GetPropKey(void* ptr);



extern "C" void NSSortDescriptor_Dispose(void* ptr);
