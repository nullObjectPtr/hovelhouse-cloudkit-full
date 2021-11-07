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
bool CKOperationConfiguration_GetPropLongLived(const void* ptr)
{
    CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
    BOOL longLived = [iCKOperationConfiguration isLongLived];
    return longLived;
}

void CKOperationConfiguration_SetPropLongLived(const void* ptr, bool longLived, const void** exceptionPtr)
{
	@try
	{
		CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
		[iCKOperationConfiguration setLongLived:longLived];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


double CKOperationConfiguration_GetPropTimeoutIntervalForRequest(const void* ptr)
{
    CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
    NSTimeInterval timeoutIntervalForRequest = [iCKOperationConfiguration timeoutIntervalForRequest];
    return timeoutIntervalForRequest;
}

void CKOperationConfiguration_SetPropTimeoutIntervalForRequest(const void* ptr, double timeoutIntervalForRequest, const void** exceptionPtr)
{
	@try
	{
		CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
		[iCKOperationConfiguration setTimeoutIntervalForRequest:timeoutIntervalForRequest];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


double CKOperationConfiguration_GetPropTimeoutIntervalForResource(const void* ptr)
{
    CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
    NSTimeInterval timeoutIntervalForResource = [iCKOperationConfiguration timeoutIntervalForResource];
    return timeoutIntervalForResource;
}

void CKOperationConfiguration_SetPropTimeoutIntervalForResource(const void* ptr, double timeoutIntervalForResource, const void** exceptionPtr)
{
	@try
	{
		CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
		[iCKOperationConfiguration setTimeoutIntervalForResource:timeoutIntervalForResource];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


bool CKOperationConfiguration_GetPropAllowsCellularAccess(const void* ptr)
{
    CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
    BOOL allowsCellularAccess = [iCKOperationConfiguration allowsCellularAccess];
    return allowsCellularAccess;
}

void CKOperationConfiguration_SetPropAllowsCellularAccess(const void* ptr, bool allowsCellularAccess, const void** exceptionPtr)
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


void* CKOperationConfiguration_GetPropContainer(const void* ptr)
{
    CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
    CKContainer* container = [iCKOperationConfiguration container];
    return (__bridge void*) container;
}

void CKOperationConfiguration_SetPropContainer(const void* ptr, void* container, const void** exceptionPtr)
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


long CKOperationConfiguration_GetPropQualityOfService(const void* ptr)
{
    CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
    NSQualityOfService qualityOfService = [iCKOperationConfiguration qualityOfService];
    return qualityOfService;
}

void CKOperationConfiguration_SetPropQualityOfService(const void* ptr, long qualityOfService, const void** exceptionPtr)
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
    NSLog(@"Dispose...CKOperationConfiguration");
}

}
