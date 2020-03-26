//
//  CKOperation.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKOperation.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties

void* CKOperation_GetPropConfiguration(void* ptr)
{
	CKOperation* iCKOperation = (__bridge CKOperation*) ptr;
	CKOperationConfiguration* val = [iCKOperation configuration];
	return (__bridge_retained void*) val;
}

void CKOperation_SetPropConfiguration(void* ptr, void* configuration, void** exceptionPtr)
{
	@try 
	{
		CKOperation* iCKOperation = (__bridge CKOperation*) ptr;
		[iCKOperation setConfiguration:(__bridge CKOperationConfiguration*) configuration];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

const char* CKOperation_GetPropOperationID(void* ptr)
{
	CKOperation* iCKOperation = (__bridge CKOperation*) ptr;
	CKOperationID val = [iCKOperation operationID];
	return [val UTF8String];
}

void* CKOperation_GetPropGroup(void* ptr)
{
	CKOperation* iCKOperation = (__bridge CKOperation*) ptr;
	CKOperationGroup* val = [iCKOperation group];
	return (__bridge_retained void*) val;
}

void CKOperation_SetPropGroup(void* ptr, void* group, void** exceptionPtr)
{
	@try 
	{
		CKOperation* iCKOperation = (__bridge CKOperation*) ptr;
		[iCKOperation setGroup:(__bridge CKOperationGroup*) group];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


void CKOperation_Dispose(void* ptr)
{
    CKOperation* val = (__bridge CKOperation*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKOperation");
}

}
