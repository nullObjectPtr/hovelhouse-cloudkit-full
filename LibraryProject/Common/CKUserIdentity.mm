//
//  CKUserIdentity.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKUserIdentity.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties

bool CKUserIdentity_GetPropHasiCloudAccount(void* ptr)
{
	CKUserIdentity* iCKUserIdentity = (__bridge CKUserIdentity*) ptr;
	BOOL val = [iCKUserIdentity hasiCloudAccount];
	return val;
}

void* CKUserIdentity_GetPropLookupInfo(void* ptr)
{
	CKUserIdentity* iCKUserIdentity = (__bridge CKUserIdentity*) ptr;
	CKUserIdentityLookupInfo* val = [iCKUserIdentity lookupInfo];
	return (__bridge_retained void*) val;
}

void* CKUserIdentity_GetPropNameComponents(void* ptr)
{
	CKUserIdentity* iCKUserIdentity = (__bridge CKUserIdentity*) ptr;
	NSPersonNameComponents* val = [iCKUserIdentity nameComponents];
	return (__bridge_retained void*) val;
}

void* CKUserIdentity_GetPropUserRecordID(void* ptr)
{
	CKUserIdentity* iCKUserIdentity = (__bridge CKUserIdentity*) ptr;
	CKRecordID* val = [iCKUserIdentity userRecordID];
	return (__bridge_retained void*) val;
}
//TODO: PROPERTYSTRINGARRAY


void CKUserIdentity_Dispose(void* ptr)
{
    CKUserIdentity* val = (__bridge CKUserIdentity*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKUserIdentity");
}

}
