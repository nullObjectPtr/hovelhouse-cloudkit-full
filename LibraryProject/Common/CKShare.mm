//
//  CKShare.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKShare.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKShare_initWithCoder(
    void* aDecoder,
    void** exceptionPtr)
{
    @try 
    {
        CKShare* iCKShare = [[CKShare alloc] initWithCoder:(__bridge NSCoder*) aDecoder];
            return (__bridge_retained void*) iCKShare;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKShare_initWithRootRecord(
    void* rootRecord,
    void** exceptionPtr)
{
    @try 
    {
        CKShare* iCKShare = [[CKShare alloc] initWithRootRecord:(__bridge CKRecord*) rootRecord];
            return (__bridge_retained void*) iCKShare;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKShare_initWithRootRecord_shareID(
    void* rootRecord,
    void* shareID,
    void** exceptionPtr)
{
    @try 
    {
        CKShare* iCKShare = [[CKShare alloc] initWithRootRecord:(__bridge CKRecord*) rootRecord shareID:(__bridge CKRecordID*) shareID];
            return (__bridge_retained void*) iCKShare;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

//InstanceMethods
void CKShare_addParticipant(
    void* ptr,
    void* participant,
    void** exception
    )
{
	@try 
	{
		CKShare* iCKShare = (__bridge CKShare*) ptr;
	    [iCKShare addParticipant:(__bridge CKShareParticipant*) participant];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKShare_removeParticipant(
    void* ptr,
    void* participant,
    void** exception
    )
{
	@try 
	{
		CKShare* iCKShare = (__bridge CKShare*) ptr;
	    [iCKShare removeParticipant:(__bridge CKShareParticipant*) participant];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



//VoidMethods
//Properties

long CKShare_GetPropPublicPermission(void* ptr)
{
	CKShare* iCKShare = (__bridge CKShare*) ptr;
	CKShareParticipantPermission val = [iCKShare publicPermission];
	return val;
}

void CKShare_SetPropPublicPermission(void* ptr, long publicPermission, void** exceptionPtr)
{
	@try 
	{
		CKShare* iCKShare = (__bridge CKShare*) ptr;
		[iCKShare setPublicPermission:(CKShareParticipantPermission)publicPermission];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

void* CKShare_GetPropURL(void* ptr)
{
	CKShare* iCKShare = (__bridge CKShare*) ptr;
	NSURL* val = [iCKShare URL];
	return (__bridge_retained void*) val;
}

void* CKShare_GetPropCurrentUserParticipant(void* ptr)
{
	CKShare* iCKShare = (__bridge CKShare*) ptr;
	CKShareParticipant* val = [iCKShare currentUserParticipant];
	return (__bridge_retained void*) val;
}

void* CKShare_GetPropOwner(void* ptr)
{
	CKShare* iCKShare = (__bridge CKShare*) ptr;
	CKShareParticipant* val = [iCKShare owner];
	return (__bridge_retained void*) val;
}

void CKShare_GetPropParticipants(void* ptr, void** buffer, long* count)
{
	CKShare* iCKShare = (__bridge CKShare*) ptr;
	NSArray<CKShareParticipant*>* val = [iCKShare participants];

	*buffer = [Converters NSArrayToRetainedCArray:val];
	*count = [val count];
}


void CKShare_Dispose(void* ptr)
{
    CKShare* val = (__bridge CKShare*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKShare");
}

}
