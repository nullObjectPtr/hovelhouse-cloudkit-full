//
//  NSURL.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "NSURL.h"
#import "Converters.h"

extern "C" {

//ClassMethods
void* NSURL_URLWithString(
	const char* URLString, 
	void** exception
    )
{
	@try {
		NSLog(@"NSURL_URLWithString()");
	    NSURL* val = [NSURL URLWithString:[NSString stringWithUTF8String:URLString]];
		return (__bridge_retained void*) val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}

	return nil;
}

void* NSURL_fileURLWithPath(
	const char* path, 
	void** exception
    )
{
	@try {
		NSLog(@"NSURL_fileURLWithPath()");
	    NSURL* val = [NSURL fileURLWithPath:[NSString stringWithUTF8String:path]];
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
//VoidMethods
//Properties

const char* NSURL_GetPropAbsoluteString(void* ptr)
{
	NSURL* iNSURL = (__bridge NSURL*) ptr;
	NSString* val = [iNSURL absoluteString];
	return [val UTF8String];
}

void* NSURL_GetPropAbsoluteURL(void* ptr)
{
	NSURL* iNSURL = (__bridge NSURL*) ptr;
	NSURL* val = [iNSURL absoluteURL];
	return (__bridge_retained void*) val;
}

void* NSURL_GetPropBaseURL(void* ptr)
{
	NSURL* iNSURL = (__bridge NSURL*) ptr;
	NSURL* val = [iNSURL baseURL];
	return (__bridge_retained void*) val;
}

const char* NSURL_GetPropLastPathComponent(void* ptr)
{
	NSURL* iNSURL = (__bridge NSURL*) ptr;
	NSString* val = [iNSURL lastPathComponent];
	return [val UTF8String];
}

const char* NSURL_GetPropHost(void* ptr)
{
	NSURL* iNSURL = (__bridge NSURL*) ptr;
	NSString* val = [iNSURL host];
	return [val UTF8String];
}

const char* NSURL_GetPropPassword(void* ptr)
{
	NSURL* iNSURL = (__bridge NSURL*) ptr;
	NSString* val = [iNSURL password];
	return [val UTF8String];
}

const char* NSURL_GetPropPath(void* ptr)
{
	NSURL* iNSURL = (__bridge NSURL*) ptr;
	NSString* val = [iNSURL path];
	return [val UTF8String];
}
//TODO: PROPERTYSTRINGARRAY

const char* NSURL_GetPropPathExtension(void* ptr)
{
	NSURL* iNSURL = (__bridge NSURL*) ptr;
	NSString* val = [iNSURL pathExtension];
	return [val UTF8String];
}

const char* NSURL_GetPropQuery(void* ptr)
{
	NSURL* iNSURL = (__bridge NSURL*) ptr;
	NSString* val = [iNSURL query];
	return [val UTF8String];
}

const char* NSURL_GetPropRelativePath(void* ptr)
{
	NSURL* iNSURL = (__bridge NSURL*) ptr;
	NSString* val = [iNSURL relativePath];
	return [val UTF8String];
}

const char* NSURL_GetPropResourceSpecifier(void* ptr)
{
	NSURL* iNSURL = (__bridge NSURL*) ptr;
	NSString* val = [iNSURL resourceSpecifier];
	return [val UTF8String];
}

const char* NSURL_GetPropScheme(void* ptr)
{
	NSURL* iNSURL = (__bridge NSURL*) ptr;
	NSString* val = [iNSURL scheme];
	return [val UTF8String];
}

void* NSURL_GetPropStandardizedURL(void* ptr)
{
	NSURL* iNSURL = (__bridge NSURL*) ptr;
	NSURL* val = [iNSURL standardizedURL];
	return (__bridge_retained void*) val;
}

const char* NSURL_GetPropUser(void* ptr)
{
	NSURL* iNSURL = (__bridge NSURL*) ptr;
	NSString* val = [iNSURL user];
	return [val UTF8String];
}


void NSURL_Dispose(void* ptr)
{
    NSURL* val = (__bridge NSURL*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...NSURL");
}

}
