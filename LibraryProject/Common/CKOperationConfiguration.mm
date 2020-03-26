//
//  CKOperationConfiguration.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKOperationConfiguration.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties

bool CKOperationConfiguration_GetPropAllowsCellularAccess(void* ptr)
{
	CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
	BOOL val = [iCKOperationConfiguration allowsCellularAccess];
	return val;
}

void CKOperationConfiguration_SetPropAllowsCellularAccess(void* ptr, bool allowsCellularAccess, void** exceptionPtr)
{
	@try 
	{
		CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
		[iCKOperationConfiguration setAllowsCellularAccess:allowsCellularAccess];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

void* CKOperationConfiguration_GetPropContainer(void* ptr)
{
	CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
	CKContainer* val = [iCKOperationConfiguration container];
	return (__bridge_retained void*) val;
}

void CKOperationConfiguration_SetPropContainer(void* ptr, void* container, void** exceptionPtr)
{
	@try 
	{
		CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
		[iCKOperationConfiguration setContainer:(__bridge CKContainer*) container];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

long CKOperationConfiguration_GetPropQualityOfService(void* ptr)
{
	CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
	NSQualityOfService val = [iCKOperationConfiguration qualityOfService];
	return val;
}

void CKOperationConfiguration_SetPropQualityOfService(void* ptr, long qualityOfService, void** exceptionPtr)
{
	@try 
	{
		CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
		[iCKOperationConfiguration setQualityOfService:(NSQualityOfService)qualityOfService];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


void CKOperationConfiguration_Dispose(void* ptr)
{
    CKOperationConfiguration* val = (__bridge CKOperationConfiguration*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKOperationConfiguration");
}

}
