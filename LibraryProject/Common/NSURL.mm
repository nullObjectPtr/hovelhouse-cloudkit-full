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
