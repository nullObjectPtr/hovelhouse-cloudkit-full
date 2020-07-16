//
//  CKContainer.h
//
//  Created by Jonathan Culp <jonathanculp@gmail.com> on 05/28/2020
//  Copyright © 2020 HovelHouseApps. All rights reserved.
//  Unauthorized copying of this file, via any medium is strictly prohibited
//  Proprietary and confidential
//

#import <Foundation/Foundation.h>
#import "Callbacks.h"

// Class Methods 
extern "C" void* CKContainer_defaultContainer(
	void** exception
    );

extern "C" void* CKContainer_containerWithIdentifier(
	const char* containerIdentifier,
    void** exception
    );


// Init Methods 

// Instance methods 
extern "C" void* CKContainer_databaseWithDatabaseScope(
	void* ptr,
	long databaseScope,
    void** exception
    );


// Void methods 
extern "C" void CKContainer_fetchAllLongLivedOperationIDsWithCompletionHandler(
	void* ptr,
	unsigned long invocationId, CKLongLivedOperationIdsCallback completionHandler,
    void** exception
    );

extern "C" void CKContainer_fetchUserRecordIDWithCompletionHandler(
	void* ptr,
	unsigned long invocationId, CKRecordIDCallback completionHandler,
    void** exception
    );

extern "C" void CKContainer_discoverUserIdentityWithEmailAddress_completionHandler(
	void* ptr,
	const char* email,
    unsigned long invocationId, UserIdentityCallback completionHandler,
    void** exception
    );

extern "C" void CKContainer_fetchShareParticipantWithEmailAddress_completionHandler(
	void* ptr,
	const char* emailAddress,
    unsigned long invocationId, CKShareParticipantCallback completionHandler,
    void** exception
    );

extern "C" void CKContainer_fetchShareParticipantWithPhoneNumber_completionHandler(
	void* ptr,
	const char* phoneNumber,
    unsigned long invocationId, CKShareParticipantCallback completionHandler,
    void** exception
    );

extern "C" void CKContainer_fetchShareParticipantWithUserRecordID_completionHandler(
	void* ptr,
	void* userRecordID,
    unsigned long invocationId, CKShareParticipantCallback completionHandler,
    void** exception
    );

extern "C" void CKContainer_fetchLongLivedOperationWithID_completionHandler(
	void* ptr,
	const char* operationID,
    unsigned long invocationId, CKLongLivedOperationCallback completionHandler,
    void** exception
    );

extern "C" void CKContainer_acceptShareMetadata_completionHandler(
	void* ptr,
	void* metadata,
    unsigned long invocationId, CKShareCallback completionHandler,
    void** exception
    );

extern "C" void CKContainer_requestApplicationPermission_completionHandler(
	void* ptr,
	long applicationPermission,
    unsigned long invocationId, CKApplicationPermissionsCallback completionHandler,
    void** exception
    );

extern "C" void CKContainer_accountStatusWithCompletionHandler(
	void* ptr,
	unsigned long invocationId, CKAccountStatusCallback completionHandler,
    void** exception
    );

extern "C" void CKContainer_statusForApplicationPermission_completionHandler(
	void* ptr,
	long applicationPermission,
    unsigned long invocationId, CKApplicationPermissionsCallback completionHandler,
    void** exception
    );

extern "C" void CKContainer_addOperation(
	void* ptr,
	void* operation,
    void** exception
    );

extern "C" void CKContainer_fetchShareMetadataWithURL_completionHandler(
	void* ptr,
	void* url,
    unsigned long invocationId, CKShareMetadataCallback completionHandler,
    void** exception
    );


// Properties 
extern "C" void* CKContainer_GetPropPrivateCloudDatabase(void* ptr);
extern "C" void* CKContainer_GetPropPublicCloudDatabase(void* ptr);
extern "C" void* CKContainer_GetPropSharedCloudDatabase(void* ptr);
extern "C" const char* CKContainer_GetPropContainerIdentifier(void* ptr);


extern "C" void* AddCKAccountChangedNotificationObserver(NotificationHandler myhandler, void** exceptionPtr);

extern "C" void RemoveCKAccountChangedNotificationObserver(void* observerPtr, void** exceptionPtr);


extern "C" void CKContainer_Dispose(void* ptr);
