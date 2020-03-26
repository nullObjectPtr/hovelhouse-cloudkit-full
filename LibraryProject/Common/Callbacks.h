//
//  Callbacks.h
//  PluginCodeGenerator
//
//  Created by Jonathan on 1/8/20.
//  Copyright © 2020 HovelHouseApps. All rights reserved.
//

typedef void (*CKApplicationPermissionsCallback)(void* ptr, unsigned long invocationId, long applicationPermissionsStatus, void* error);
typedef void (*CKAccountStatusCallback)(void* ptr, unsigned long invocationId, long accountStatus, void* error);
typedef void (*UserIdentitiesCallback)(void* ptr, void* userIdentities[],
	long userIdentitiesCount, void* error);
typedef void (*UserIdentityCallback)(void* ptr, unsigned long invocationId, void* userIdentity, void* error);
typedef void (*CKShareParticipantCallback)(void* ptr, unsigned long invocationId, void* shareParticipant, void* error);
typedef void (*CKRecordIDCallback)(void* ptr, unsigned long invocationId, void* _recordID, void* _error);
typedef void (*CKRecordCallback)(void* ptr, unsigned long invocationId, void* _record, void* _error);
typedef void (*CKRecordListCallback)(void* ptr, unsigned long invocationId, void* _recordID[],
	long _recordIDCount, void* _error);
typedef void (*CKRecordZoneCallback)(void* ptr, unsigned long invocationId, void* recordZone, void* error);
typedef void (*CKRecordZoneListCallback)(void* ptr, unsigned long invocationId, void* _recordZones[],
	long _recordZonesCount, void* _error);
typedef void (*CKRecordZoneIDCallback)(void* ptr, unsigned long invocationId, void* recordZoneID, void* error);
typedef void (*CKSubscriptionCallback)(void* ptr, unsigned long invocationId, void* _subscription, void* _error);
typedef void (*CKSubscriptionArrayCallback)(void* ptr, unsigned long invocationId, void* _subscriptionArr[],
	long _subscriptionArrCount, void* _error);
typedef void (*CKLongLivedOperationIdsCallback)(void* ptr, unsigned long invocationId, const char* outstandingOperationIDs[],
	long outstandingOperationIDsCount, void* error);
typedef void (*CKLongLivedOperationCallback)(void* ptr, unsigned long invocationId, void* operationID, void* error);
typedef void (*CKShareCallback)(void* ptr, unsigned long invocationId, void* acceptedShare, void* error);
typedef void (*CKShareMetadataCallback)(void* ptr, unsigned long invocationId, void* metadata, void* error);
typedef void (*NSStringCallback)(void* ptr, unsigned long invocationId, const char* str, void* error);
typedef void (*perRecordProgressCallback)(void* ptr, void* _record, double _progress);
typedef void (*perRecordProgressCallback2)(void* ptr, void* _record, double _progress);
typedef void (*perRecordCompletionCallback)(void* ptr, void* _record, void* _error);
typedef void (*perRecordCompletionCallback2)(void* ptr, void* _record, void* _recordID, void* _error);
typedef void (*modifyRecordsCompletionCallback)(void* ptr, void* _savedRecords[],
	long _savedRecordsCount, void* _deletedRecordIDs[],
	long _deletedRecordIDsCount, void* _operationError);
typedef void (*discoverAllUserIdentitiesCompletionCallback)(void* ptr, void* _operationError);
typedef void (*discoverUserIdentitiesCompletionCallback)(void* ptr, void* _operationError);
typedef void (*changeTokenUpdatedCallback)(void* ptr, void* _serverChangeToken);
typedef void (*fetchDatabaseChangesCompletionCallback)(void* ptr, void* _serverChangeToken, bool _moreComing, void* _operationError);
typedef void (*recordZoneWithIDChangedCallback)(void* ptr, void* _zoneID);
typedef void (*recordZoneWithIDWasDeletedCallback)(void* ptr, void* _zoneID);
typedef void (*recordZoneWithIDWasPurgedCallback)(void* ptr, void* _zoneID);
//typedef void (*fetchRecordZoneChangesCompletionCallback)(void* ptr, void* _operationError);
typedef void (*recordChangedCallback)(void* ptr, void* _record);
typedef void (*recordWithIDWasDeletedCallback)(void* ptr, void* _recordID, const char* _recordType);
typedef void (*recordZoneFetchCompletionCallback)(void* ptr, void* _recordZoneID, void* _serverChangeToken, void* _clientChangeTokenData, bool _moreComing, void* _recordZoneError);
typedef void (*fetchRecordZonesCompletionCallback)(void* ptr, void* _recordZonesByZoneIDKeys[], void* _recordZonesByZoneIDValues[], long _recordZonesByZoneIDCount, void* _operationError);
typedef void (*modifyRecordZonesCompletionCallback)(void* ptr, void* _savedRecordZones[],
	long _savedRecordZonesCount, void* _deletedRecordZoneIDs[],
	long _deletedRecordZoneIDsCount, void* _operationError);
typedef void (*perShareCompletionCallback)(void* ptr, void* _shareMetadata, void* _acceptedShare, void* _error);
typedef void (*acceptSharesCompletionCallback)(void* ptr, void* _operationError);
typedef void (*fetchRecordsCompletionCallback)(void* ptr, void* _recordsByRecordIDKeys[], void* _recordsByRecordIDValues[], long _recordsByRecordIDCount, void* _operationError);
typedef void (*recordZoneChangeTokensUpdatedCallback)(void* ptr, void* _recordZoneID, void* _serverChangeToken, void* _clientChangeTokenData);
typedef void (*userIdentityDiscoveredCallback)(void* ptr, void* _identity, void* _lookupInfo);
typedef void (*fetchRecordZoneChangesCompletionCallback)(void* ptr, void* _operationError);
typedef void (*fetchShareMetadataCompletionCallback)(void* ptr, void* _operationError);
typedef void (*perShareMetadataCallback)(void* ptr, void* _shareURL, void* _shareMetadata, void* _error);
typedef void (*fetchShareParticipantsCompletionCallback)(void* ptr, void* _operationError);
typedef void (*shareParticipantFetchedCallback)(void* ptr, void* _participant);
typedef void (*longLivedOperationWasPersistedCallback)(void* ptr);
typedef void (*queryCompletionCallback)(void* ptr, void* _cursor, void* _operationError);
typedef void (*recordFetchedCallback)(void* ptr, void* _record);


typedef void* (*NSUbiquitousKeyValueStoreDidChangeExternallyCallback)(void* unsub, NSInteger reason, const char** changedKeys, NSInteger count);

typedef void (*NotificationHandler)(void* unsub, void* notification);
