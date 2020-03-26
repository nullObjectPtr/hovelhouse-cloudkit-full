//
//  CKQuery.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKQuery.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
void* CKQuery_initWithRecordType_predicate(
    const char* recordType,
    void* predicate,
    void** exceptionPtr)
{
    @try 
    {
        CKQuery* iCKQuery = [[CKQuery alloc] initWithRecordType:[NSString stringWithUTF8String:recordType] predicate:(__bridge NSPredicate*) predicate];
            return (__bridge_retained void*) iCKQuery;
    }
    @catch(NSException* ex)
    {
        *exceptionPtr = (__bridge_retained void*)ex;
    }

    return nil;
}

void* CKQuery_initWithCoder(
    void* aDecoder,
    void** exceptionPtr)
{
    @try 
    {
        CKQuery* iCKQuery = [[CKQuery alloc] initWithCoder:(__bridge NSCoder*) aDecoder];
            return (__bridge_retained void*) iCKQuery;
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

void CKQuery_GetPropSortDescriptors(void* ptr, void** buffer, long* count)
{
	CKQuery* iCKQuery = (__bridge CKQuery*) ptr;
	NSArray<NSSortDescriptor*>* val = [iCKQuery sortDescriptors];

	*buffer = [Converters NSArrayToRetainedCArray:val];
	*count = [val count];
}

void CKQuery_SetPropSortDescriptors(void* ptr, void* sortDescriptors[],
	long sortDescriptorsCount, void** exceptionPtr)
{
	@try 
	{
		CKQuery* iCKQuery = (__bridge CKQuery*) ptr;
		[iCKQuery setSortDescriptors:[Converters BridgedArray:sortDescriptors withCount:sortDescriptorsCount]];
	}
	@catch(NSException* ex)
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}

const char* CKQuery_GetPropRecordType(void* ptr)
{
	CKQuery* iCKQuery = (__bridge CKQuery*) ptr;
	CKRecordType val = [iCKQuery recordType];
	return [val UTF8String];
}

void* CKQuery_GetPropPredicate(void* ptr)
{
	CKQuery* iCKQuery = (__bridge CKQuery*) ptr;
	NSPredicate* val = [iCKQuery predicate];
	return (__bridge_retained void*) val;
}


void CKQuery_Dispose(void* ptr)
{
    CKQuery* val = (__bridge CKQuery*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKQuery");
}

}
