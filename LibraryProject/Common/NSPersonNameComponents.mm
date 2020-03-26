//
//  NSPersonNameComponents.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "NSPersonNameComponents.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties

const char* NSPersonNameComponents_GetPropNamePrefix(void* ptr)
{
	NSPersonNameComponents* iNSPersonNameComponents = (__bridge NSPersonNameComponents*) ptr;
	NSString* val = [iNSPersonNameComponents namePrefix];
	return [val UTF8String];
}

void NSPersonNameComponents_SetPropNamePrefix(void* ptr, const char* namePrefix, void** exceptionPtr)
{
	@try 
	{
		NSPersonNameComponents* iNSPersonNameComponents = (__bridge NSPersonNameComponents*) ptr;
		[iNSPersonNameComponents setNamePrefix:[NSString stringWithUTF8String:namePrefix]];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

const char* NSPersonNameComponents_GetPropGivenName(void* ptr)
{
	NSPersonNameComponents* iNSPersonNameComponents = (__bridge NSPersonNameComponents*) ptr;
	NSString* val = [iNSPersonNameComponents givenName];
	return [val UTF8String];
}

void NSPersonNameComponents_SetPropGivenName(void* ptr, const char* givenName, void** exceptionPtr)
{
	@try 
	{
		NSPersonNameComponents* iNSPersonNameComponents = (__bridge NSPersonNameComponents*) ptr;
		[iNSPersonNameComponents setGivenName:[NSString stringWithUTF8String:givenName]];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

const char* NSPersonNameComponents_GetPropMiddleName(void* ptr)
{
	NSPersonNameComponents* iNSPersonNameComponents = (__bridge NSPersonNameComponents*) ptr;
	NSString* val = [iNSPersonNameComponents middleName];
	return [val UTF8String];
}

void NSPersonNameComponents_SetPropMiddleName(void* ptr, const char* middleName, void** exceptionPtr)
{
	@try 
	{
		NSPersonNameComponents* iNSPersonNameComponents = (__bridge NSPersonNameComponents*) ptr;
		[iNSPersonNameComponents setMiddleName:[NSString stringWithUTF8String:middleName]];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

const char* NSPersonNameComponents_GetPropFamilyName(void* ptr)
{
	NSPersonNameComponents* iNSPersonNameComponents = (__bridge NSPersonNameComponents*) ptr;
	NSString* val = [iNSPersonNameComponents familyName];
	return [val UTF8String];
}

void NSPersonNameComponents_SetPropFamilyName(void* ptr, const char* familyName, void** exceptionPtr)
{
	@try 
	{
		NSPersonNameComponents* iNSPersonNameComponents = (__bridge NSPersonNameComponents*) ptr;
		[iNSPersonNameComponents setFamilyName:[NSString stringWithUTF8String:familyName]];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

const char* NSPersonNameComponents_GetPropNameSuffix(void* ptr)
{
	NSPersonNameComponents* iNSPersonNameComponents = (__bridge NSPersonNameComponents*) ptr;
	NSString* val = [iNSPersonNameComponents nameSuffix];
	return [val UTF8String];
}

void NSPersonNameComponents_SetPropNameSuffix(void* ptr, const char* nameSuffix, void** exceptionPtr)
{
	@try 
	{
		NSPersonNameComponents* iNSPersonNameComponents = (__bridge NSPersonNameComponents*) ptr;
		[iNSPersonNameComponents setNameSuffix:[NSString stringWithUTF8String:nameSuffix]];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

const char* NSPersonNameComponents_GetPropNickname(void* ptr)
{
	NSPersonNameComponents* iNSPersonNameComponents = (__bridge NSPersonNameComponents*) ptr;
	NSString* val = [iNSPersonNameComponents nickname];
	return [val UTF8String];
}

void NSPersonNameComponents_SetPropNickname(void* ptr, const char* nickname, void** exceptionPtr)
{
	@try 
	{
		NSPersonNameComponents* iNSPersonNameComponents = (__bridge NSPersonNameComponents*) ptr;
		[iNSPersonNameComponents setNickname:[NSString stringWithUTF8String:nickname]];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

void* NSPersonNameComponents_GetPropPhoneticRepresentation(void* ptr)
{
	NSPersonNameComponents* iNSPersonNameComponents = (__bridge NSPersonNameComponents*) ptr;
	NSPersonNameComponents* val = [iNSPersonNameComponents phoneticRepresentation];
	return (__bridge_retained void*) val;
}

void NSPersonNameComponents_SetPropPhoneticRepresentation(void* ptr, void* phoneticRepresentation, void** exceptionPtr)
{
	@try 
	{
		NSPersonNameComponents* iNSPersonNameComponents = (__bridge NSPersonNameComponents*) ptr;
		[iNSPersonNameComponents setPhoneticRepresentation:(__bridge NSPersonNameComponents*) phoneticRepresentation];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


void NSPersonNameComponents_Dispose(void* ptr)
{
    NSPersonNameComponents* val = (__bridge NSPersonNameComponents*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...NSPersonNameComponents");
}

}
