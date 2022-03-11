//
//  CKDatabaseOperation.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKDatabaseOperation.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
//Properties

void* CKDatabaseOperation_GetPropDatabase(void* ptr)
{
	CKDatabaseOperation* iCKDatabaseOperation = (__bridge CKDatabaseOperation*) ptr;
    if(LogLevel >= LogLevelVerbose)
    {
        NSLog(@"'%@':'%@' - GetPropDatabase",
              [iCKDatabaseOperation class],
              [iCKDatabaseOperation operationID]
              );
    }
	CKDatabase* val = [iCKDatabaseOperation database];
	return (__bridge_retained void*) val;
}

void CKDatabaseOperation_SetPropDatabase(void* ptr, void* database, void** exceptionPtr)
{
	@try 
	{
		CKDatabaseOperation* iCKDatabaseOperation = (__bridge CKDatabaseOperation*) ptr;
        CKDatabase* iDatabase = (__bridge CKDatabase*) database;
        if(LogLevel >= LogLevelLog)
        {
            NSLog(@"'%@':'%@' - SetPropDatabase",
                  [iCKDatabaseOperation class],
                  [iCKDatabaseOperation operationID]
                  );
        }
		[iCKDatabaseOperation setDatabase:iDatabase];
	}
	@catch(NSException* ex) 
	{
		*exceptionPtr = (__bridge_retained void*) ex;
	}
}


void CKDatabaseOperation_Dispose(void* ptr)
{
    CKDatabaseOperation* val = (__bridge CKDatabaseOperation*) ptr;
    if(val != nil)
    {
        if(LogLevel >= LogLevelVeryVerbose)
        {
            NSLog(@"'%@' '%@' Dispose", [val class], [val operationID]);
        }
        CFRelease(ptr);
    }
}

}
