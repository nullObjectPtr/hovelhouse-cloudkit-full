//
//  CKQueryOperation.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKQueryOperation.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKQueryOperation_init(
    void** exceptionPtr)
{
    @try 
    {
        CKQueryOperation* iCKQueryOperation = [[CKQueryOperation alloc] init];
            return (__bridge_retained void*) iCKQueryOperation;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKQueryOperation_initWithQuery(
    void* query,
    void** exceptionPtr)
{
    @try 
    {
        CKQueryOperation* iCKQueryOperation = [[CKQueryOperation alloc] initWithQuery:(__bridge CKQuery*) query];
            return (__bridge_retained void*) iCKQueryOperation;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKQueryOperation_initWithCursor(
    void* cursor,
    void** exceptionPtr)
{
    @try 
    {
        CKQueryOperation* iCKQueryOperation = [[CKQueryOperation alloc] initWithCursor:(__bridge CKQueryCursor*) cursor];
            return (__bridge_retained void*) iCKQueryOperation;
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

void* CKQueryOperation_GetPropQuery(void* ptr)
{
	CKQueryOperation* iCKQueryOperation = (__bridge CKQueryOperation*) ptr;
	CKQuery* val = [iCKQueryOperation query];
	return (__bridge_retained void*) val;
}

void CKQueryOperation_SetPropQuery(void* ptr, void* query, void** exceptionPtr)
{
	@try 
	{
		CKQueryOperation* iCKQueryOperation = (__bridge CKQueryOperation*) ptr;
		[iCKQueryOperation setQuery:(__bridge CKQuery*) query];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

void* CKQueryOperation_GetPropCursor(void* ptr)
{
	CKQueryOperation* iCKQueryOperation = (__bridge CKQueryOperation*) ptr;
	CKQueryCursor* val = [iCKQueryOperation cursor];
	return (__bridge_retained void*) val;
}

void CKQueryOperation_SetPropCursor(void* ptr, void* cursor, void** exceptionPtr)
{
	@try 
	{
		CKQueryOperation* iCKQueryOperation = (__bridge CKQueryOperation*) ptr;
		[iCKQueryOperation setCursor:(__bridge CKQueryCursor*) cursor];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

void* CKQueryOperation_GetPropZoneID(void* ptr)
{
	CKQueryOperation* iCKQueryOperation = (__bridge CKQueryOperation*) ptr;
	CKRecordZoneID* val = [iCKQueryOperation zoneID];
	return (__bridge_retained void*) val;
}

void CKQueryOperation_SetPropZoneID(void* ptr, void* zoneID, void** exceptionPtr)
{
	@try 
	{
		CKQueryOperation* iCKQueryOperation = (__bridge CKQueryOperation*) ptr;
		[iCKQueryOperation setZoneID:(__bridge CKRecordZoneID*) zoneID];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}
//TODO: PROPERTYSTRINGARRAY
void CKQueryOperation_SetPropRecordFetchedHandler(void* ptr, recordFetchedCallback recordFetchedHandler, void** exceptionPtr)
{
	@try 
	{
		CKQueryOperation* iCKQueryOperation = (__bridge CKQueryOperation*) ptr;
		[iCKQueryOperation setRecordFetchedBlock:^(CKRecord* _record)
			{
				
				recordFetchedHandler(ptr, (__bridge_retained void*) _record);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}
void CKQueryOperation_SetPropQueryCompletionHandler(void* ptr, queryCompletionCallback queryCompletionHandler, void** exceptionPtr)
{
	@try 
	{
		CKQueryOperation* iCKQueryOperation = (__bridge CKQueryOperation*) ptr;
		[iCKQueryOperation setQueryCompletionBlock:^(CKQueryCursor* _cursor,
	NSError* _operationError)
			{
				
				queryCompletionHandler(ptr, (__bridge_retained void*) _cursor, (__bridge_retained void*) _operationError);
				
			}];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*)ex;
	}
}

uint CKQueryOperation_GetPropResultsLimit(void* ptr)
{
	CKQueryOperation* iCKQueryOperation = (__bridge CKQueryOperation*) ptr;
	NSUInteger val = [iCKQueryOperation resultsLimit];
	return val;
}

void CKQueryOperation_SetPropResultsLimit(void* ptr, uint resultsLimit, void** exceptionPtr)
{
	@try 
	{
		CKQueryOperation* iCKQueryOperation = (__bridge CKQueryOperation*) ptr;
		[iCKQueryOperation setResultsLimit:resultsLimit];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


void CKQueryOperation_Dispose(void* ptr)
{
    CKQueryOperation* val = (__bridge CKQueryOperation*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKQueryOperation");
}

}
