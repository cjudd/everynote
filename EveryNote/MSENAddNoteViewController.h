//
//  MSENAddNoteViewController.h
//  EveryNote
//
//  Created by Christopher Judd on 12/3/13.
//  Copyright (c) 2013 Manifest Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MSENAddNoteViewController;

@protocol AddNoteDelegate

-(void) savedNote:(MSENAddNoteViewController*) controller;

@end

@interface MSENAddNoteViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) id <AddNoteDelegate> delegate;

@end
