//
//  CKOperationGroup.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKOperationGroup.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKOperationGroup_init(
    void** exceptionPtr)
{
    @try 
    {
        CKOperationGroup* iCKOperationGroup = [[CKOperationGroup alloc] init];
            return (__bridge_retained void*) iCKOperationGroup;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKOperationGroup_initWithCoder(
    void* aDecoder,
    void** exceptionPtr)
{
    @try 
    {
        CKOperationGroup* iCKOperationGroup = [[CKOperationGroup alloc] initWithCoder:(__bridge NSCoder*) aDecoder];
            return (__bridge_retained void*) iCKOperationGroup;
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

void* CKOperationGroup_GetPropDefaultConfiguration(void* ptr)
{
	CKOperationGroup* iCKOperationGroup = (__bridge CKOperationGroup*) ptr;
	CKOperationConfiguration* val = [iCKOperationGroup defaultConfiguration];
	return (__bridge_retained void*) val;
}

void CKOperationGroup_SetPropDefaultConfiguration(void* ptr, void* defaultConfiguration, void** exceptionPtr)
{
	@try 
	{
		CKOperationGroup* iCKOperationGroup = (__bridge CKOperationGroup*) ptr;
		[iCKOperationGroup setDefaultConfiguration:(__bridge CKOperationConfiguration*) defaultConfiguration];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

long CKOperationGroup_GetPropExpectedReceiveSize(void* ptr)
{
	CKOperationGroup* iCKOperationGroup = (__bridge CKOperationGroup*) ptr;
	CKOperationGroupTransferSize val = [iCKOperationGroup expectedReceiveSize];
	return val;
}

void CKOperationGroup_SetPropExpectedReceiveSize(void* ptr, long expectedReceiveSize, void** exceptionPtr)
{
	@try 
	{
		CKOperationGroup* iCKOperationGroup = (__bridge CKOperationGroup*) ptr;
		[iCKOperationGroup setExpectedReceiveSize:(CKOperationGroupTransferSize)expectedReceiveSize];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

long CKOperationGroup_GetPropExpectedSendSize(void* ptr)
{
	CKOperationGroup* iCKOperationGroup = (__bridge CKOperationGroup*) ptr;
	CKOperationGroupTransferSize val = [iCKOperationGroup expectedSendSize];
	return val;
}

void CKOperationGroup_SetPropExpectedSendSize(void* ptr, long expectedSendSize, void** exceptionPtr)
{
	@try 
	{
		CKOperationGroup* iCKOperationGroup = (__bridge CKOperationGroup*) ptr;
		[iCKOperationGroup setExpectedSendSize:(CKOperationGroupTransferSize)expectedSendSize];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

const char* CKOperationGroup_GetPropName(void* ptr)
{
	CKOperationGroup* iCKOperationGroup = (__bridge CKOperationGroup*) ptr;
	NSString* val = [iCKOperationGroup name];
	return [val UTF8String];
}

void CKOperationGroup_SetPropName(void* ptr, const char* name, void** exceptionPtr)
{
	@try 
	{
		CKOperationGroup* iCKOperationGroup = (__bridge CKOperationGroup*) ptr;
		[iCKOperationGroup setName:[NSString stringWithUTF8String:name]];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

const char* CKOperationGroup_GetPropOperationGroupID(void* ptr)
{
	CKOperationGroup* iCKOperationGroup = (__bridge CKOperationGroup*) ptr;
	NSString* val = [iCKOperationGroup operationGroupID];
	return [val UTF8String];
}

uint CKOperationGroup_GetPropQuantity(void* ptr)
{
	CKOperationGroup* iCKOperationGroup = (__bridge CKOperationGroup*) ptr;
	NSUInteger val = [iCKOperationGroup quantity];
	return val;
}

void CKOperationGroup_SetPropQuantity(void* ptr, uint quantity, void** exceptionPtr)
{
	@try 
	{
		CKOperationGroup* iCKOperationGroup = (__bridge CKOperationGroup*) ptr;
		[iCKOperationGroup setQuantity:quantity];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


void CKOperationGroup_Dispose(void* ptr)
{
    CKOperationGroup* val = (__bridge CKOperationGroup*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKOperationGroup");
}

}
