//
//  CKRecord.h
//
//  Created by Jonathan Culp <jonathanculp@gmail.com> on 03/26/2020
//  Copyright © 2020 HovelHouseApps. All rights reserved.
//  Unauthorized copying of this file, via any medium is strictly prohibited
//  Proprietary and confidential
//

#import <Foundation/Foundation.h>
#import "Callbacks.h"

// Class Methods 

// Init Methods 
extern "C" void* CKRecord_initWithRecordType(
    const char* recordType,
    void** exceptionPtr);

extern "C" void* CKRecord_initWithRecordType_zoneID(
    const char* recordType,
    void* zoneID,
    void** exceptionPtr);

extern "C" void* CKRecord_initWithRecordType_recordID(
    const char* recordType,
    void* recordID,
    void** exceptionPtr);


// Instance methods 
extern "C" void CKRecord_allKeys(
	void* ptr,
    const void** buffer,
    long* count
    );

extern "C" void CKRecord_changedKeys(
	void* ptr,
    const void** buffer,
    long* count
    );

extern "C" void CKRecord_allTokens(
	void* ptr,
    const void** buffer,
    long* count
    );

extern "C" void CKRecord_bufferForKey(
    void* ptr,
    const char* key,
    const void** buffer,
    unsigned long* length
    );
extern "C" const char* CKRecord_stringForKey(
	void* ptr, const char* key, void** error);
extern "C" NSInteger CKRecord_intForKey(void* ptr, const char* key, void** error);
extern "C" double CKRecord_doubleForKey(void* ptr, const char* key, void** error);
extern "C" void* CKRecord_assetForKey(
    void* ptr,
    const char* key);

// Void methods 
extern "C" void CKRecord_encodeSystemFieldsWithCoder(
	void* ptr,
	void* coder,
    void** exception
    );

extern "C" void CKRecord_setParentReferenceFromRecord(
	void* ptr,
	void* parentRecord,
    void** exception
    );

extern "C" void CKRecord_setParentReferenceFromRecordID(
	void* ptr,
	void* parentRecordID,
    void** exception
    );

extern "C" void CKRecord_setBuffer_forKey(void* ptr, void* buffer, long bufferLength, const char* key );
extern "C" void CKRecord_setReference_forKey(
	void* ptr,
	void* reference,
    const char* key,
    void** exception
    );

extern "C" void CKRecord_setAsset_forKey(void* ptr, void* assetPtr, const char* key );
extern "C" void CKRecord_setString_forKey(void* ptr, const char* obj, const char* key );
extern "C" void CKRecord_setInt_forKey(void* ptr, NSInteger obj, const char* key );
extern "C" void CKRecord_setDouble_forKey(void* ptr, double obj, const char* key );

// Properties 
extern "C" void* CKRecord_GetPropRecordID(void* ptr);
extern "C" const char* CKRecord_GetPropRecordType(void* ptr);
extern "C" double CKRecord_GetPropCreationDate(void* ptr);
extern "C" void* CKRecord_GetPropCreatorUserRecordID(void* ptr);
extern "C" double CKRecord_GetPropModificationDate(void* ptr);
extern "C" void* CKRecord_GetPropLastModifiedUserRecordID(void* ptr);
extern "C" const char* CKRecord_GetPropRecordChangeTag(void* ptr);
extern "C" void* CKRecord_GetPropParent(void* ptr);
extern "C" void CKRecord_SetPropParent(void* ptr, void* parent, void** exceptionPtr);

extern "C" void* CKRecord_GetPropShare(void* ptr);



extern "C" void CKRecord_Dispose(void* ptr);
