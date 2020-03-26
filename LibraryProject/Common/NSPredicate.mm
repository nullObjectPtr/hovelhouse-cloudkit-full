//
//  NSPredicate.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "NSPredicate.h"
#import "Converters.h"

extern "C" {

//ClassMethods
void* NSPredicate_predicateWithValue(
	bool value, 
	void** exception
    )
{
	@try {
		NSLog(@"NSPredicate_predicateWithValue()");
	    NSPredicate* val = [NSPredicate predicateWithValue:value];
		return (__bridge_retained void*) val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}

	return nil;
}

void* NSPredicate_predicateWithFormat(
	const char* predicateFormat, 
	void** exception
    )
{
	@try {
		NSLog(@"NSPredicate_predicateWithFormat()");
	    NSPredicate* val = [NSPredicate predicateWithFormat:[NSString stringWithUTF8String:predicateFormat]];
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

const char* NSPredicate_GetPropPredicateFormat(void* ptr)
{
	NSPredicate* iNSPredicate = (__bridge NSPredicate*) ptr;
	NSString* val = [iNSPredicate predicateFormat];
	return [val UTF8String];
}


void NSPredicate_Dispose(void* ptr)
{
    NSPredicate* val = (__bridge NSPredicate*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...NSPredicate");
}

}
