//
//  CKNotificationInfo.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKNotificationInfo.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties

const char* CKNotificationInfo_GetPropCollapseIDKey(void* ptr)
{
	CKNotificationInfo* iCKNotificationInfo = (__bridge CKNotificationInfo*) ptr;
	NSString* val = [iCKNotificationInfo collapseIDKey];
	return [val UTF8String];
}

void CKNotificationInfo_SetPropCollapseIDKey(void* ptr, const char* collapseIDKey, void** exceptionPtr)
{
	@try 
	{
		CKNotificationInfo* iCKNotificationInfo = (__bridge CKNotificationInfo*) ptr;
		[iCKNotificationInfo setCollapseIDKey:[NSString stringWithUTF8String:collapseIDKey]];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

bool CKNotificationInfo_GetPropShouldBadge(void* ptr)
{
	CKNotificationInfo* iCKNotificationInfo = (__bridge CKNotificationInfo*) ptr;
	BOOL val = [iCKNotificationInfo shouldBadge];
	return val;
}

void CKNotificationInfo_SetPropShouldBadge(void* ptr, bool shouldBadge, void** exceptionPtr)
{
	@try 
	{
		CKNotificationInfo* iCKNotificationInfo = (__bridge CKNotificationInfo*) ptr;
		[iCKNotificationInfo setShouldBadge:shouldBadge];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

bool CKNotificationInfo_GetPropShouldSendContentAvailable(void* ptr)
{
	CKNotificationInfo* iCKNotificationInfo = (__bridge CKNotificationInfo*) ptr;
	BOOL val = [iCKNotificationInfo shouldSendContentAvailable];
	return val;
}

void CKNotificationInfo_SetPropShouldSendContentAvailable(void* ptr, bool shouldSendContentAvailable, void** exceptionPtr)
{
	@try 
	{
		CKNotificationInfo* iCKNotificationInfo = (__bridge CKNotificationInfo*) ptr;
		[iCKNotificationInfo setShouldSendContentAvailable:shouldSendContentAvailable];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

bool CKNotificationInfo_GetPropShouldSendMutableContent(void* ptr)
{
	CKNotificationInfo* iCKNotificationInfo = (__bridge CKNotificationInfo*) ptr;
	BOOL val = [iCKNotificationInfo shouldSendMutableContent];
	return val;
}

void CKNotificationInfo_SetPropShouldSendMutableContent(void* ptr, bool shouldSendMutableContent, void** exceptionPtr)
{
	@try 
	{
		CKNotificationInfo* iCKNotificationInfo = (__bridge CKNotificationInfo*) ptr;
		[iCKNotificationInfo setShouldSendMutableContent:shouldSendMutableContent];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}
//TODO: PROPERTYSTRINGARRAY


void CKNotificationInfo_Dispose(void* ptr)
{
    CKNotificationInfo* val = (__bridge CKNotificationInfo*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKNotificationInfo");
}

}
