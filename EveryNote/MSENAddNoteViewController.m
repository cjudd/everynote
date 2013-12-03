//
//  MSENAddNoteViewController.m
//  EveryNote
//
//  Created by Christopher Judd on 12/3/13.
//  Copyright (c) 2013 Manifest Solutions. All rights reserved.
//

#import "MSENAddNoteViewController.h"

@interface MSENAddNoteViewController ()

@end

@implementation MSENAddNoteViewController

@synthesize delegate;

- (IBAction)save:(id)sender {
    [self.delegate savedNote:self];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
