//
//  MSENAppDelegate.h
//  EveryNote
//
//  Created by Christopher Judd on 12/2/13.
//  Copyright (c) 2013 Manifest Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MSENAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
