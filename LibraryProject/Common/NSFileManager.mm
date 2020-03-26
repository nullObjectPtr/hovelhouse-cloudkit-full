//
//  NSFileManager.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "NSFileManager.h"
#import "Converters.h"

extern "C" {

//ClassMethods
void* NSFileManager_defaultManager(
	void** exception
    )
{
	@try {
		NSLog(@"NSFileManager_defaultManager()");
	    NSFileManager* val = [NSFileManager defaultManager];
		return (__bridge_retained void*) val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}

	return nil;
}

//InitMethods
//InstanceMethods
void* NSFileManager_URLForUbiquityContainerIdentifier(
    void* ptr,
    const char* containerIdentifier,
    void** exception
    )
{
	@try 
	{
		NSFileManager* iNSFileManager = (__bridge NSFileManager*) ptr;
	    NSURL* val = [iNSFileManager URLForUbiquityContainerIdentifier:[NSString stringWithUTF8String:containerIdentifier]];
	    return (__bridge_retained void*) val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	return nil;
}



bool NSFileManager_isUbiquitousItemAtURL(
    void* ptr,
    void* url,
    void** exception
    )
{
	@try 
	{
		NSFileManager* iNSFileManager = (__bridge NSFileManager*) ptr;
	    BOOL val = [iNSFileManager isUbiquitousItemAtURL:(__bridge NSURL*) url];
	    return val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	return NO;
}



bool NSFileManager_startDownloadingUbiquitousItemAtURL_error(
    void* ptr,
    void* url,
    void** error,
    void** exception
    )
{
    @try {
        NSError* anyError;
		NSFileManager* iNSFileManager = (__bridge NSFileManager*) ptr;
	    BOOL val = [iNSFileManager startDownloadingUbiquitousItemAtURL:(__bridge NSURL*) url error:&anyError];
        
        *error = anyError != nil ? (__bridge_retained void*) anyError : nil;
        
	    return val;
	}
    @catch(NSException* ex)
    {
        *exception = (__bridge_retained void*) ex;
    }
}


bool NSFileManager_evictUbiquitousItemAtURL_error(
    void* ptr,
    void* url,
    void** error,
    void** exception
    )
{
    @try
    {
        NSError* anyError;
        NSFileManager* iNSFileManager = (__bridge NSFileManager*) ptr;
        BOOL val = [iNSFileManager evictUbiquitousItemAtURL:(__bridge NSURL*) url error:&anyError];
        
        *error = anyError != nil ? (__bridge_retained void*) anyError : nil;
        
        return val;
    }
    @catch(NSException* ex)
    {
        *exception = (__bridge_retained void*) ex;
    }
    
    return NO;
}


bool NSFileManager_setUbiquitous_itemAtURL_destinationURL_error(
    void* ptr,
    bool flag,
    void* url,
    void* destinationURL,
    void** error,
    void** exception
    )
{
	@try 
	{
        NSError* anyError;
		NSFileManager* iNSFileManager = (__bridge NSFileManager*) ptr;
	    BOOL val = [iNSFileManager setUbiquitous:flag itemAtURL:(__bridge NSURL*) url destinationURL:(__bridge NSURL*) destinationURL error:&anyError];
        
        *error = anyError != nil ? (__bridge_retained void*) anyError : nil;
        
	    return val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	return NO;
}


//VoidMethods
//Properties

void* NSFileManager_GetPropUbiquityIdentityToken(void* ptr)
{
	NSFileManager* iNSFileManager = (__bridge NSFileManager*) ptr;
	id val = [iNSFileManager ubiquityIdentityToken];
	return (__bridge_retained void*) val;
}


void NSFileManager_Dispose(void* ptr)
{
    NSFileManager* val = (__bridge NSFileManager*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...NSFileManager");
}

}
