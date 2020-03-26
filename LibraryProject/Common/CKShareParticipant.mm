//
//  CKShareParticipant.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKShareParticipant.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties

long CKShareParticipant_GetPropAcceptanceStatus(void* ptr)
{
	CKShareParticipant* iCKShareParticipant = (__bridge CKShareParticipant*) ptr;
	CKShareParticipantAcceptanceStatus val = [iCKShareParticipant acceptanceStatus];
	return val;
}

long CKShareParticipant_GetPropPermission(void* ptr)
{
	CKShareParticipant* iCKShareParticipant = (__bridge CKShareParticipant*) ptr;
	CKShareParticipantPermission val = [iCKShareParticipant permission];
	return val;
}

void CKShareParticipant_SetPropPermission(void* ptr, long permission, void** exceptionPtr)
{
	@try 
	{
		CKShareParticipant* iCKShareParticipant = (__bridge CKShareParticipant*) ptr;
		[iCKShareParticipant setPermission:(CKShareParticipantPermission)permission];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

void* CKShareParticipant_GetPropUserIdentity(void* ptr)
{
	CKShareParticipant* iCKShareParticipant = (__bridge CKShareParticipant*) ptr;
	CKUserIdentity* val = [iCKShareParticipant userIdentity];
	return (__bridge_retained void*) val;
}

long CKShareParticipant_GetPropRole(void* ptr)
{
	CKShareParticipant* iCKShareParticipant = (__bridge CKShareParticipant*) ptr;
	CKShareParticipantRole val = [iCKShareParticipant role];
	return val;
}

void CKShareParticipant_SetPropRole(void* ptr, long role, void** exceptionPtr)
{
	@try 
	{
		CKShareParticipant* iCKShareParticipant = (__bridge CKShareParticipant*) ptr;
		[iCKShareParticipant setRole:(CKShareParticipantRole)role];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


void CKShareParticipant_Dispose(void* ptr)
{
    CKShareParticipant* val = (__bridge CKShareParticipant*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKShareParticipant");
}

}
