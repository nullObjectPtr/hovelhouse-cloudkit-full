//
//  NSError.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "NSError.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties

NSInteger NSError_GetPropCode(void* ptr)
{
	NSError* iNSError = (__bridge NSError*) ptr;
	NSInteger val = [iNSError code];
	return val;
}

const char* NSError_GetPropLocalizedDescription(void* ptr)
{
	NSError* iNSError = (__bridge NSError*) ptr;
	NSString* val = [iNSError localizedDescription];
	return [val UTF8String];
}

const char* NSError_GetPropLocalizedRecoverySuggestion(void* ptr)
{
	NSError* iNSError = (__bridge NSError*) ptr;
	NSString* val = [iNSError localizedRecoverySuggestion];
	return [val UTF8String];
}

const char* NSError_GetPropLocalizedFailureReason(void* ptr)
{
	NSError* iNSError = (__bridge NSError*) ptr;
	NSString* val = [iNSError localizedFailureReason];
	return [val UTF8String];
}

const char* NSError_GetPropHelpAnchor(void* ptr)
{
	NSError* iNSError = (__bridge NSError*) ptr;
	NSString* val = [iNSError helpAnchor];
	return [val UTF8String];
}
//TODO: PROPERTYSTRINGARRAY


void NSError_Dispose(void* ptr)
{
    NSError* val = (__bridge NSError*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...NSError");
}

}
