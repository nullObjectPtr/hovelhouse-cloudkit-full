//
//  CKUserIdentityLookupInfo.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKUserIdentityLookupInfo.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKUserIdentityLookupInfo_initWithEmailAddress(
    const char* emailAddress,
    void** exceptionPtr)
{
    @try 
    {
        CKUserIdentityLookupInfo* iCKUserIdentityLookupInfo = [[CKUserIdentityLookupInfo alloc] initWithEmailAddress:[NSString stringWithUTF8String:emailAddress]];
            return (__bridge_retained void*) iCKUserIdentityLookupInfo;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKUserIdentityLookupInfo_initWithUserRecordID(
    void* userRecordID,
    void** exceptionPtr)
{
    @try 
    {
        CKUserIdentityLookupInfo* iCKUserIdentityLookupInfo = [[CKUserIdentityLookupInfo alloc] initWithUserRecordID:(__bridge CKRecordID*) userRecordID];
            return (__bridge_retained void*) iCKUserIdentityLookupInfo;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

//InstanceMethods
//VoidMethods
//Properties

const char* CKUserIdentityLookupInfo_GetPropEmailAddress(void* ptr)
{
	CKUserIdentityLookupInfo* iCKUserIdentityLookupInfo = (__bridge CKUserIdentityLookupInfo*) ptr;
	NSString* val = [iCKUserIdentityLookupInfo emailAddress];
	return [val UTF8String];
}

const char* CKUserIdentityLookupInfo_GetPropPhoneNumber(void* ptr)
{
	CKUserIdentityLookupInfo* iCKUserIdentityLookupInfo = (__bridge CKUserIdentityLookupInfo*) ptr;
	NSString* val = [iCKUserIdentityLookupInfo phoneNumber];
	return [val UTF8String];
}

void* CKUserIdentityLookupInfo_GetPropUserRecordID(void* ptr)
{
	CKUserIdentityLookupInfo* iCKUserIdentityLookupInfo = (__bridge CKUserIdentityLookupInfo*) ptr;
	CKRecordID* val = [iCKUserIdentityLookupInfo userRecordID];
	return (__bridge_retained void*) val;
}


void CKUserIdentityLookupInfo_Dispose(void* ptr)
{
    CKUserIdentityLookupInfo* val = (__bridge CKUserIdentityLookupInfo*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKUserIdentityLookupInfo");
}

}
