//
//  CKContainer.mm
//
//  Created by Jonathan on 12/31/19.
//  Copyright © 2019 HovelHouseApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import "CKContainer.h"
#import "Converters.h"

extern "C" {

//ClassMethods
void* CKContainer_defaultContainer(
	void** exception
    )
{
	@try {
		NSLog(@"CKContainer_defaultContainer()");
	    CKContainer* val = [CKContainer defaultContainer];
		return (__bridge_retained void*) val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}

	return nil;
}

void* CKContainer_containerWithIdentifier(
	const char* containerIdentifier, 
	void** exception
    )
{
	@try {
		NSLog(@"CKContainer_containerWithIdentifier()");
	    CKContainer* val = [CKContainer containerWithIdentifier:[NSString stringWithUTF8String:containerIdentifier]];
		return (__bridge_retained void*) val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}

	return nil;
}

//InitMethods
//InstanceMethods
void* CKContainer_databaseWithDatabaseScope(
    void* ptr,
    long databaseScope,
    void** exception
    )
{
	@try 
	{
		CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	    CKDatabase* val = [iCKContainer databaseWithDatabaseScope:(CKDatabaseScope)databaseScope];
	    return (__bridge_retained void*) val;
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	return nil;
}



//VoidMethods
void CKContainer_fetchAllLongLivedOperationIDsWithCompletionHandler(
    void* ptr,
    unsigned long invocationId, CKLongLivedOperationIdsCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	    [iCKContainer fetchAllLongLivedOperationIDsWithCompletionHandler:^(NSArray<CKOperationID>* outstandingOperationIDs,
NSError* error)
		{
			long outstandingOperationIDsCount = [outstandingOperationIDs count];
			const char** outstandingOperationIDsBuffer = [Converters NSArrayOfStringsToCArrayOfStringPointers:outstandingOperationIDs];
			completionHandler(ptr, invocationId, outstandingOperationIDsBuffer, outstandingOperationIDsCount, (__bridge_retained void*) error);
			free(outstandingOperationIDsBuffer);
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKContainer_fetchUserRecordIDWithCompletionHandler(
    void* ptr,
    unsigned long invocationId, CKRecordIDCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	    [iCKContainer fetchUserRecordIDWithCompletionHandler:^(CKRecordID* _recordID,
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



void CKContainer_discoverUserIdentityWithEmailAddress_completionHandler(
    void* ptr,
    const char* email,
    unsigned long invocationId, UserIdentityCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	    [iCKContainer discoverUserIdentityWithEmailAddress:[NSString stringWithUTF8String:email] completionHandler:^(CKUserIdentity* userIdentity,
NSError* error)
		{
			
			completionHandler(ptr, invocationId, (__bridge_retained void*) userIdentity, (__bridge_retained void*) error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKContainer_fetchShareParticipantWithEmailAddress_completionHandler(
    void* ptr,
    const char* emailAddress,
    unsigned long invocationId, CKShareParticipantCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	    [iCKContainer fetchShareParticipantWithEmailAddress:[NSString stringWithUTF8String:emailAddress] completionHandler:^(CKShareParticipant* shareParticipant,
NSError* error)
		{
			
			completionHandler(ptr, invocationId, (__bridge_retained void*) shareParticipant, (__bridge_retained void*) error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKContainer_fetchShareParticipantWithPhoneNumber_completionHandler(
    void* ptr,
    const char* phoneNumber,
    unsigned long invocationId, CKShareParticipantCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	    [iCKContainer fetchShareParticipantWithPhoneNumber:[NSString stringWithUTF8String:phoneNumber] completionHandler:^(CKShareParticipant* shareParticipant,
NSError* error)
		{
			
			completionHandler(ptr, invocationId, (__bridge_retained void*) shareParticipant, (__bridge_retained void*) error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKContainer_fetchShareParticipantWithUserRecordID_completionHandler(
    void* ptr,
    void* userRecordID,
    unsigned long invocationId, CKShareParticipantCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	    [iCKContainer fetchShareParticipantWithUserRecordID:(__bridge CKRecordID*) userRecordID completionHandler:^(CKShareParticipant* shareParticipant,
NSError* error)
		{
			
			completionHandler(ptr, invocationId, (__bridge_retained void*) shareParticipant, (__bridge_retained void*) error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKContainer_fetchLongLivedOperationWithID_completionHandler(
    void* ptr,
    const char* operationID,
    unsigned long invocationId, CKLongLivedOperationCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	    [iCKContainer fetchLongLivedOperationWithID:[NSString stringWithUTF8String:operationID] completionHandler:^(CKOperation* operationID,
NSError* error)
		{
			
			completionHandler(ptr, invocationId, (__bridge_retained void*) operationID, (__bridge_retained void*) error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKContainer_acceptShareMetadata_completionHandler(
    void* ptr,
    void* metadata,
    unsigned long invocationId, CKShareCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	    [iCKContainer acceptShareMetadata:(__bridge CKShareMetadata*) metadata completionHandler:^(CKShare* acceptedShare,
NSError* error)
		{
			
			completionHandler(ptr, invocationId, (__bridge_retained void*) acceptedShare, (__bridge_retained void*) error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKContainer_requestApplicationPermission_completionHandler(
    void* ptr,
    long applicationPermission,
    unsigned long invocationId, CKApplicationPermissionsCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	    [iCKContainer requestApplicationPermission:(CKApplicationPermissions)applicationPermission completionHandler:^(CKApplicationPermissionStatus applicationPermissionsStatus,
NSError* error)
		{
			
			completionHandler(ptr, invocationId, applicationPermissionsStatus, (__bridge_retained void*) error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKContainer_accountStatusWithCompletionHandler(
    void* ptr,
    unsigned long invocationId, CKAccountStatusCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	    [iCKContainer accountStatusWithCompletionHandler:^(CKAccountStatus accountStatus,
NSError* error)
		{
			
			completionHandler(ptr, invocationId, accountStatus, (__bridge_retained void*) error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKContainer_statusForApplicationPermission_completionHandler(
    void* ptr,
    long applicationPermission,
    unsigned long invocationId, CKApplicationPermissionsCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	    [iCKContainer statusForApplicationPermission:(CKApplicationPermissions)applicationPermission completionHandler:^(CKApplicationPermissionStatus applicationPermissionsStatus,
NSError* error)
		{
			
			completionHandler(ptr, invocationId, applicationPermissionsStatus, (__bridge_retained void*) error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKContainer_addOperation(
    void* ptr,
    void* operation,
    void** exception
    )
{
	@try 
	{
		CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	    [iCKContainer addOperation:(__bridge CKOperation*) operation];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



void CKContainer_fetchShareMetadataWithURL_completionHandler(
    void* ptr,
    void* url,
    unsigned long invocationId, CKShareMetadataCallback completionHandler,
    void** exception
    )
{
	@try 
	{
		CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	    [iCKContainer fetchShareMetadataWithURL:(__bridge NSURL*) url completionHandler:^(CKShareMetadata* metadata,
NSError* error)
		{
			
			completionHandler(ptr, invocationId, (__bridge_retained void*) metadata, (__bridge_retained void*) error);
			
		}
];
	}
	@catch(NSException* ex)
	{
		*exception = (__bridge_retained void*) ex;
	}
	
}



//Properties

void* CKContainer_GetPropPrivateCloudDatabase(void* ptr)
{
	CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	CKDatabase* val = [iCKContainer privateCloudDatabase];
	return (__bridge_retained void*) val;
}

void* CKContainer_GetPropPublicCloudDatabase(void* ptr)
{
	CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	CKDatabase* val = [iCKContainer publicCloudDatabase];
	return (__bridge_retained void*) val;
}

void* CKContainer_GetPropSharedCloudDatabase(void* ptr)
{
	CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	CKDatabase* val = [iCKContainer sharedCloudDatabase];
	return (__bridge_retained void*) val;
}

const char* CKContainer_GetPropContainerIdentifier(void* ptr)
{
	CKContainer* iCKContainer = (__bridge CKContainer*) ptr;
	NSString* val = [iCKContainer containerIdentifier];
	return [val UTF8String];
}

void* AddCKAccountChangedNotificationObserver(NotificationHandler myhandler, void** exceptionPtr)
{
    @try 
    {
        __block id observer;
        observer = [[NSNotificationCenter defaultCenter] addObserverForName:CKAccountChangedNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
            
            myhandler((__bridge_retained void*) observer, (__bridge_retained void*) note);
        }];
        
        return (__bridge_retained void*)observer;
    }
    @catch(NSException* exception)
    {
        *exceptionPtr = (__bridge_retained void*) exception;
    }
    
    return nil;
}

void RemoveCKAccountChangedNotificationObserver(void* observerHandle, void** exceptionPtr)
{
    @try 
    {
        [[NSNotificationCenter defaultCenter] removeObserver:(__bridge NSObject*) observerHandle];
    }
    @catch(NSException* exception)
    {
        *exceptionPtr = (__bridge_retained void*) exception;
    }
}


void CKContainer_Dispose(void* ptr)
{
    CKContainer* val = (__bridge CKContainer*) ptr;
    if(val != nil)
    {
        CFRelease(ptr);
    }
    //NSLog(@"Dispose...CKContainer");
}

}
