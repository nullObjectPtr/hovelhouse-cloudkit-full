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
    if(LogLevel >= LogLevelVeryVerbose)
    {
        NSLog(@"CKOperationConfiguration Get LongLived");
    }
    BOOL longLived = [iCKOperationConfiguration isLongLived];
    return longLived;
}

void CKOperationConfiguration_SetPropLongLived(const void* ptr, bool longLived, const void** exceptionPtr)
{
	@try
	{
		CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
        if(LogLevel >= LogLevelVerbose)
        {
            NSLog(@"CKOperationConfiguration Set LongLived:'%@'", longLived ? @"true" : @"false");
        }
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
    if(LogLevel >= LogLevelVeryVerbose)
    {
        NSLog(@"CKOperationConfiguration Set TimeoutIntervalForRequest");
    }
    NSTimeInterval timeoutIntervalForRequest = [iCKOperationConfiguration timeoutIntervalForRequest];
    return timeoutIntervalForRequest;
}

void CKOperationConfiguration_SetPropTimeoutIntervalForRequest(const void* ptr, double timeoutIntervalForRequest, const void** exceptionPtr)
{
	@try
	{
		CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
        if(LogLevel >= LogLevelVerbose)
        {
            NSLog(@"CKOperationConfiguration Set TimeoutIntervalForRequest:'%f'", timeoutIntervalForRequest);
        }
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
    if(LogLevel >= LogLevelVeryVerbose)
    {
        NSLog(@"CKOperationConfiguration Get TimeoutIntervalForResource");
    }
    NSTimeInterval timeoutIntervalForResource = [iCKOperationConfiguration timeoutIntervalForResource];
    return timeoutIntervalForResource;
}

void CKOperationConfiguration_SetPropTimeoutIntervalForResource(const void* ptr, double timeoutIntervalForResource, const void** exceptionPtr)
{
	@try
	{
		CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
        if(LogLevel >= LogLevelVerbose)
        {
            NSLog(@"CKOperationConfiguration Set TimeoutIntervalForResource", timeoutIntervalForResource);
        }
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
    if(LogLevel >= LogLevelVeryVerbose)
    {
        NSLog(@"CKOperationConfiguration Get AllowsCellularAccess");
    }
    BOOL allowsCellularAccess = [iCKOperationConfiguration allowsCellularAccess];
    return allowsCellularAccess;
}

void CKOperationConfiguration_SetPropAllowsCellularAccess(const void* ptr, bool allowsCellularAccess, const void** exceptionPtr)
{
	@try
	{
		CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
        if(LogLevel >= LogLevelVeryVerbose)
        {
            NSLog(@"CKOperationConfiguration Set AllowsCellularAccess:'%@'", allowsCellularAccess ? @"true" : @"false");
        }
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
    if(LogLevel >= LogLevelVeryVerbose)
    {
        NSLog(@"CKOperationConfiguration Get Container");
    }
    CKContainer* container = [iCKOperationConfiguration container];
    return (__bridge void*) container;
}

void CKOperationConfiguration_SetPropContainer(const void* ptr, void* container, const void** exceptionPtr)
{
	@try
	{
		CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
        CKContainer* iContainer = (__bridge CKContainer*) container;
        if(LogLevel >= LogLevelLog)
        {
            NSLog(@"CKOperationConfiguration Set Container: '%@'", [iContainer containerIdentifier]);
        }
		[iCKOperationConfiguration setContainer:iContainer];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


long CKOperationConfiguration_GetPropQualityOfService(const void* ptr)
{
    CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
    if(LogLevel >= LogLevelVeryVerbose)
    {
        NSLog(@"CKOperationConfiguration Get QualityOfService");
    }
    NSQualityOfService qualityOfService = [iCKOperationConfiguration qualityOfService];
    return qualityOfService;
}

void CKOperationConfiguration_SetPropQualityOfService(const void* ptr, long qualityOfService, const void** exceptionPtr)
{
	@try
	{
		CKOperationConfiguration* iCKOperationConfiguration = (__bridge CKOperationConfiguration*) ptr;
        if(LogLevel >= LogLevelLog)
        {
            NSLog(@"CKOperationConfiguration Set QualityOfService: '%@'", [Converters NSQualityOfServiceToString:(NSQualityOfService)qualityOfService]);
        }
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
        if(LogLevel >= LogLevelVeryVerbose)
        {
            NSLog(@"CKOperationConfiguration Dispose");
        }
        CFRelease(ptr);
    }
    NSLog(@"Dispose...CKOperationConfiguration");
}

}
