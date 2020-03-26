//
//  CKAcceptSharesOperation.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKAcceptSharesOperation.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKAcceptSharesOperation_init(
    void** exceptionPtr)
{
    @try 
    {
        CKAcceptSharesOperation* iCKAcceptSharesOperation = [[CKAcceptSharesOperation alloc] init];
            return (__bridge_retained void*) iCKAcceptSharesOperation;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKAcceptSharesOperation_initWithShareMetadatas(
    void* shareMetadatas[],
	long shareMetadatasCount,
    void** exceptionPtr)
{
    @try 
    {
        CKAcceptSharesOperation* iCKAcceptSharesOperation = [[CKAcceptSharesOperation alloc] initWithShareMetadatas:[Converters BridgedArray:shareMetadatas withCount:shareMetadatasCount]];
            return (__bridge_retained void*) iCKAcceptSharesOperation;
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

void CKAcceptSharesOperation_GetPropShareMetadatas(void* ptr, void** buffer, long* count)
{
	CKAcceptSharesOperation* iCKAcceptSharesOperation = (__bridge CKAcceptSharesOperation*) ptr;
	NSArray<CKShareMetadata*>* val = [iCKAcceptSharesOperation shareMetadatas];

	*buffer = [Converters NSArrayToRetainedCArray:val];
	*count = [val count];
}

void CKAcceptSharesOperation_SetPropShareMetadatas(void* ptr, void* shareMetadatas[],
	long shareMetadatasCount, void** exceptionPtr)
{
	@try 
	{
		CKAcceptSharesOperation* iCKAcceptSharesOperation = (__bridge CKAcceptSharesOperation*) ptr;
		[iCKAcceptSharesOperation setShareMetadatas:[Converters BridgedArray:shareMetadatas withCount:shareMetadatasCount]];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}
void CKAcceptSharesOperation_SetPropAcceptSharesHandler(void* ptr, acceptSharesCompletionCallback acceptSharesHandler, void** exceptionPtr)
{
	@try 
	{
		CKAcceptSharesOperation* iCKAcceptSharesOperation = (__bridge CKAcceptSharesOperation*) ptr;
		[iCKAcceptSharesOperation setAcceptSharesCompletionBlock:^(NSError* _operationError)
			{
				
				acceptSharesHandler(ptr, (__bridge_retained void*) _operationError);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}
void CKAcceptSharesOperation_SetPropPerShareCompletionHandler(void* ptr, perShareCompletionCallback perShareCompletionHandler, void** exceptionPtr)
{
	@try 
	{
		CKAcceptSharesOperation* iCKAcceptSharesOperation = (__bridge CKAcceptSharesOperation*) ptr;
		[iCKAcceptSharesOperation setPerShareCompletionBlock:^(CKShareMetadata* _shareMetadata,
	CKShare* _acceptedShare,
	NSError* _error)
			{
				
				perShareCompletionHandler(ptr, (__bridge_retained void*) _shareMetadata, (__bridge_retained void*) _acceptedShare, (__bridge_retained void*) _error);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}


void CKAcceptSharesOperation_Dispose(void* ptr)
{
    CKAcceptSharesOperation* val = (__bridge CKAcceptSharesOperation*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKAcceptSharesOperation");
}

}
