//
//  CKShareMetadata.h
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

// Properties 
extern "C" const char* CKShareMetadata_GetPropContainerIdentifier(void* ptr);
extern "C" void* CKShareMetadata_GetPropOwnerIdentity(void* ptr);
extern "C" long CKShareMetadata_GetPropParticipantPermission(void* ptr);
extern "C" long CKShareMetadata_GetPropParticipantStatus(void* ptr);
extern "C" void* CKShareMetadata_GetPropRootRecord(void* ptr);
extern "C" void* CKShareMetadata_GetPropRootRecordID(void* ptr);
extern "C" void* CKShareMetadata_GetPropShare(void* ptr);
extern "C" long CKShareMetadata_GetPropParticipantRole(void* ptr);



extern "C" void CKShareMetadata_Dispose(void* ptr);
