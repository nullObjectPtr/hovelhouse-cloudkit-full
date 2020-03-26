//
//  CKShareMetadata.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKShareMetadata.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties

const char* CKShareMetadata_GetPropContainerIdentifier(void* ptr)
{
	CKShareMetadata* iCKShareMetadata = (__bridge CKShareMetadata*) ptr;
	NSString* val = [iCKShareMetadata containerIdentifier];
	return [val UTF8String];
}

void* CKShareMetadata_GetPropOwnerIdentity(void* ptr)
{
	CKShareMetadata* iCKShareMetadata = (__bridge CKShareMetadata*) ptr;
	CKUserIdentity* val = [iCKShareMetadata ownerIdentity];
	return (__bridge_retained void*) val;
}

long CKShareMetadata_GetPropParticipantPermission(void* ptr)
{
	CKShareMetadata* iCKShareMetadata = (__bridge CKShareMetadata*) ptr;
	CKShareParticipantPermission val = [iCKShareMetadata participantPermission];
	return val;
}

long CKShareMetadata_GetPropParticipantStatus(void* ptr)
{
	CKShareMetadata* iCKShareMetadata = (__bridge CKShareMetadata*) ptr;
	CKShareParticipantAcceptanceStatus val = [iCKShareMetadata participantStatus];
	return val;
}

void* CKShareMetadata_GetPropRootRecord(void* ptr)
{
	CKShareMetadata* iCKShareMetadata = (__bridge CKShareMetadata*) ptr;
	CKRecord* val = [iCKShareMetadata rootRecord];
	return (__bridge_retained void*) val;
}

void* CKShareMetadata_GetPropRootRecordID(void* ptr)
{
	CKShareMetadata* iCKShareMetadata = (__bridge CKShareMetadata*) ptr;
	CKRecordID* val = [iCKShareMetadata rootRecordID];
	return (__bridge_retained void*) val;
}

void* CKShareMetadata_GetPropShare(void* ptr)
{
	CKShareMetadata* iCKShareMetadata = (__bridge CKShareMetadata*) ptr;
	CKShare* val = [iCKShareMetadata share];
	return (__bridge_retained void*) val;
}

long CKShareMetadata_GetPropParticipantRole(void* ptr)
{
	CKShareMetadata* iCKShareMetadata = (__bridge CKShareMetadata*) ptr;
	CKShareParticipantRole val = [iCKShareMetadata participantRole];
	return val;
}


void CKShareMetadata_Dispose(void* ptr)
{
    CKShareMetadata* val = (__bridge CKShareMetadata*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKShareMetadata");
}

}
