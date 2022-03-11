//
//  CKDatabase.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKDatabase.h"
#import "Converters.h"

extern "C" {

//ClassMethods
//InitMethods
//InstanceMethods
//VoidMethods
void CKDatabase_addOperation(
    void* ptr,
    void* operation,
    void** exception
    )
{
	@try 
	{
		CKDatabase* iCKDatabase = (__bridge CKDatabase*) ptr;
        CKDatabaseOperation* iOperation = (__bridge CKDatabaseOperation*) operation;
        if(LogLevel >= LogLevelLog)
        {
            NSLog(@"adding operation with id '%@' to database with scope '%@'",
                  [iOperation operationID],
                  [Converters CKDatabaseScopeToString:[iCKDatabase databaseScope]]);
        }
	    [iCKDatabase addOperation:iOperation];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
}



void CKDatabase_fetchRecordWithID_completionHandler(
    void* ptr,
    void* recordID,
    unsigned long invocationId, CKRecordCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKDatabase* iCKDatabase = (__bridge CKDatabase*) ptr;
        CKRecordID* iRecordID = (__bridge CKRecordID*) recordID;
        
        if(LogLevel >= LogLevelLog)
        {
            NSLog(@"database '%@' fetchRecordWithID '%@'",
                   [Converters CKDatabaseScopeToString:[iCKDatabase databaseScope]],
                   iRecordID
                   );
        }
        
	    [iCKDatabase fetchRecordWithID:iRecordID completionHandler:^(CKRecord* _record,
NSError* _error)
		{
            if(LogLevel >= LogLevelLog)
            {
                if(_error == nil)
                {
                    NSLog(@"fetchRecordWithID - fetched record:'%@'",
                          _record != nil ? [_record recordID] : @"null"
                          );
                }
                else
                {
                    NSLog(@"fetchRecordWithID - failed to fetch record - error:'%@'",
                          _error != nil ? _error : @"null"
                          );
                }
            }
            
			completionHandler(ptr, invocationId, (__bridge_retained void*) _record, (__bridge_retained void*) _error);
		}];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKDatabase_saveRecord_completionHandler(
    void* ptr,
    void* record,
    unsigned long invocationId, CKRecordCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKDatabase* iCKDatabase = (__bridge CKDatabase*) ptr;
	    [iCKDatabase saveRecord:(__bridge CKRecord*) record completionHandler:^(CKRecord* _record,
NSError* _error)
		{
			
			completionHandler(ptr, invocationId, (__bridge_retained void*) _record, (__bridge_retained void*) _error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKDatabase_deleteRecordWithID_completionHandler(
    void* ptr,
    void* recordID,
    unsigned long invocationId, CKRecordIDCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKDatabase* iCKDatabase = (__bridge CKDatabase*) ptr;
	    [iCKDatabase deleteRecordWithID:(__bridge CKRecordID*) recordID completionHandler:^(CKRecordID* _recordID,
NSError* _error)
		{
			
			completionHandler(ptr, invocationId, (__bridge_retained void*) _recordID, (__bridge_retained void*) _error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKDatabase_fetchRecordZoneWithID_completionHandler(
    void* ptr,
    void* zoneID,
    unsigned long invocationId, CKRecordZoneCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKDatabase* iCKDatabase = (__bridge CKDatabase*) ptr;
	    [iCKDatabase fetchRecordZoneWithID:(__bridge CKRecordZoneID*) zoneID completionHandler:^(CKRecordZone* recordZone,
NSError* error)
		{
			
			completionHandler(ptr, invocationId, (__bridge_retained void*) recordZone, (__bridge_retained void*) error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKDatabase_saveRecordZone_completionHandler(
    void* ptr,
    void* zone,
    unsigned long invocationId, CKRecordZoneCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKDatabase* iCKDatabase = (__bridge CKDatabase*) ptr;
	    [iCKDatabase saveRecordZone:(__bridge CKRecordZone*) zone completionHandler:^(CKRecordZone* recordZone,
NSError* error)
		{
			
			completionHandler(ptr, invocationId, (__bridge_retained void*) recordZone, (__bridge_retained void*) error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKDatabase_deleteRecordZoneWithID_completionHandler(
    void* ptr,
    void* zoneID,
    unsigned long invocationId, CKRecordZoneIDCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKDatabase* iCKDatabase = (__bridge CKDatabase*) ptr;
	    [iCKDatabase deleteRecordZoneWithID:(__bridge CKRecordZoneID*) zoneID completionHandler:^(CKRecordZoneID* recordZoneID,
NSError* error)
		{
			
			completionHandler(ptr, invocationId, (__bridge_retained void*) recordZoneID, (__bridge_retained void*) error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKDatabase_fetchSubscriptionWithID_completionHandler(
    void* ptr,
    const char* subscriptionID,
    unsigned long invocationId, CKSubscriptionCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKDatabase* iCKDatabase = (__bridge CKDatabase*) ptr;
	    [iCKDatabase fetchSubscriptionWithID:[NSString stringWithUTF8String:subscriptionID] completionHandler:^(CKSubscription* _subscription,
NSError* _error)
		{
			
			completionHandler(ptr, invocationId, (__bridge_retained void*) _subscription, (__bridge_retained void*) _error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKDatabase_saveSubscription_completionHandler(
    void* ptr,
    void* subscription,
    unsigned long invocationId, CKSubscriptionCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKDatabase* iCKDatabase = (__bridge CKDatabase*) ptr;
	    [iCKDatabase saveSubscription:(__bridge CKSubscription*) subscription completionHandler:^(CKSubscription* _subscription,
NSError* _error)
		{
			
			completionHandler(ptr, invocationId, (__bridge_retained void*) _subscription, (__bridge_retained void*) _error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKDatabase_deleteSubscriptionWithID_completionHandler(
    void* ptr,
    const char* subscriptionID,
    unsigned long invocationId, NSStringCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKDatabase* iCKDatabase = (__bridge CKDatabase*) ptr;
	    [iCKDatabase deleteSubscriptionWithID:[NSString stringWithUTF8String:subscriptionID] completionHandler:^(NSString* str,
NSError* error)
		{
			
			completionHandler(ptr, invocationId, [str UTF8String], (__bridge_retained void*) error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKDatabase_fetchAllSubscriptionsWithCompletionHandler(
    void* ptr,
    unsigned long invocationId, CKSubscriptionArrayCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKDatabase* iCKDatabase = (__bridge CKDatabase*) ptr;
	    [iCKDatabase fetchAllSubscriptionsWithCompletionHandler:^(NSArray<CKSubscription*>* _subscriptionArr,
NSError* _error)
		{
			long _subscriptionArrCount = [_subscriptionArr count];
			void** _subscriptionArrBuffer = (void**) malloc(sizeof(void*) * _subscriptionArrCount);
			[Converters NSArrayToRetainedCArray:_subscriptionArr withBuffer:_subscriptionArrBuffer];
			completionHandler(ptr, invocationId, _subscriptionArrBuffer, _subscriptionArrCount, (__bridge_retained void*) _error);
			free(_subscriptionArrBuffer);
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKDatabase_fetchAllRecordZonesWithCompletionHandler(
    void* ptr,
    unsigned long invocationId, CKRecordZoneListCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKDatabase* iCKDatabase = (__bridge CKDatabase*) ptr;
	    [iCKDatabase fetchAllRecordZonesWithCompletionHandler:^(NSArray<CKRecordZone*>* _recordZones,
NSError* _error)
		{
			long _recordZonesCount = [_recordZones count];
			void** _recordZonesBuffer = (void**) malloc(sizeof(void*) * _recordZonesCount);
			[Converters NSArrayToRetainedCArray:_recordZones withBuffer:_recordZonesBuffer];
			completionHandler(ptr, invocationId, _recordZonesBuffer, _recordZonesCount, (__bridge_retained void*) _error);
			free(_recordZonesBuffer);
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKDatabase_performQuery_inZoneWithID_completionHandler(
    void* ptr,
    void* query,
    void* zoneID,
    unsigned long invocationId, CKRecordListCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKDatabase* iCKDatabase = (__bridge CKDatabase*) ptr;
	    [iCKDatabase performQuery:(__bridge CKQuery*) query inZoneWithID:(__bridge CKRecordZoneID*) zoneID completionHandler:^(NSArray<CKRecord*>* _recordID,
NSError* _error)
		{
			long _recordIDCount = [_recordID count];
			void** _recordIDBuffer = (void**) malloc(sizeof(void*) * _recordIDCount);
			[Converters NSArrayToRetainedCArray:_recordID withBuffer:_recordIDBuffer];
			completionHandler(ptr, invocationId, _recordIDBuffer, _recordIDCount, (__bridge_retained void*) _error);
			free(_recordIDBuffer);
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



//Properties

long CKDatabase_GetPropDatabaseScope(void* ptr)
{
	CKDatabase* iCKDatabase = (__bridge CKDatabase*) ptr;
	CKDatabaseScope val = [iCKDatabase databaseScope];
	return val;
}


void CKDatabase_Dispose(void* ptr)
{
    CKDatabase* val = (__bridge CKDatabase*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKDatabase");
}

}
