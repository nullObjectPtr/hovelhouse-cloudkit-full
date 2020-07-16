//
//  CKDatabase.h
//
//  Created by Jonathan Culp <jonathanculp@gmail.com> on 05/28/2020
//  Copyright © 2020 HovelHouseApps. All rights reserved.
//  Unauthorized copying of this file, via any medium is strictly prohibited
//  Proprietary and confidential
//

#import <Foundation/Foundation.h>
#import "Callbacks.h"

// Class Methods 

// Init Methods 

// Instance methods 

// Void methods 
extern "C" void CKDatabase_addOperation(
	void* ptr,
	void* operation,
    void** exception
    );

extern "C" void CKDatabase_fetchRecordWithID_completionHandler(
	void* ptr,
	void* recordID,
    unsigned long invocationId, CKRecordCallback completionHandler,
    void** exception
    );

extern "C" void CKDatabase_saveRecord_completionHandler(
	void* ptr,
	void* record,
    unsigned long invocationId, CKRecordCallback completionHandler,
    void** exception
    );

extern "C" void CKDatabase_deleteRecordWithID_completionHandler(
	void* ptr,
	void* recordID,
    unsigned long invocationId, CKRecordIDCallback completionHandler,
    void** exception
    );

extern "C" void CKDatabase_fetchRecordZoneWithID_completionHandler(
	void* ptr,
	void* zoneID,
    unsigned long invocationId, CKRecordZoneCallback completionHandler,
    void** exception
    );

extern "C" void CKDatabase_saveRecordZone_completionHandler(
	void* ptr,
	void* zone,
    unsigned long invocationId, CKRecordZoneCallback completionHandler,
    void** exception
    );

extern "C" void CKDatabase_deleteRecordZoneWithID_completionHandler(
	void* ptr,
	void* zoneID,
    unsigned long invocationId, CKRecordZoneIDCallback completionHandler,
    void** exception
    );

extern "C" void CKDatabase_fetchSubscriptionWithID_completionHandler(
	void* ptr,
	const char* subscriptionID,
    unsigned long invocationId, CKSubscriptionCallback completionHandler,
    void** exception
    );

extern "C" void CKDatabase_saveSubscription_completionHandler(
	void* ptr,
	void* subscription,
    unsigned long invocationId, CKSubscriptionCallback completionHandler,
    void** exception
    );

extern "C" void CKDatabase_deleteSubscriptionWithID_completionHandler(
	void* ptr,
	const char* subscriptionID,
    unsigned long invocationId, NSStringCallback completionHandler,
    void** exception
    );

extern "C" void CKDatabase_fetchAllSubscriptionsWithCompletionHandler(
	void* ptr,
	unsigned long invocationId, CKSubscriptionArrayCallback completionHandler,
    void** exception
    );

extern "C" void CKDatabase_fetchAllRecordZonesWithCompletionHandler(
	void* ptr,
	unsigned long invocationId, CKRecordZoneListCallback completionHandler,
    void** exception
    );

extern "C" void CKDatabase_performQuery_inZoneWithID_completionHandler(
	void* ptr,
	void* query,
    void* zoneID,
    unsigned long invocationId, CKRecordListCallback completionHandler,
    void** exception
    );


// Properties 
extern "C" long CKDatabase_GetPropDatabaseScope(void* ptr);



extern "C" void CKDatabase_Dispose(void* ptr);
