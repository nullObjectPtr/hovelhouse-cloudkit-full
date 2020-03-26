//
//  NSException.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "NSException.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties

const char* NSException_GetPropName(void* ptr)
{
	NSException* iNSException = (__bridge NSException*) ptr;
	NSExceptionName val = [iNSException name];
	return [val UTF8String];
}

const char* NSException_GetPropReason(void* ptr)
{
	NSException* iNSException = (__bridge NSException*) ptr;
	NSString* val = [iNSException reason];
	return [val UTF8String];
}
//TODO: PROPERTYSTRINGARRAY


void NSException_Dispose(void* ptr)
{
    NSException* val = (__bridge NSException*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...NSException");
}

}
