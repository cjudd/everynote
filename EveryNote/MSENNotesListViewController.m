//
//  MSENNotesListViewController.m
//  EveryNote
//
//  Created by Christopher Judd on 12/3/13.
//  Copyright (c) 2013 Manifest Solutions. All rights reserved.
//

#import "MSENNotesListViewController.h"
#import "MSENAddNoteViewController.h"

@interface MSENNotesListViewController () <AddNoteDelegate> {
    NSMutableArray *notes;
}

@end

@implementation MSENNotesListViewController

-(void) savedNote:(MSENAddNoteViewController *)controller {
    [notes addObject: controller.titleField.text];
    [[self tableView] reloadData];
    [controller.navigationController popToRootViewControllerAnimated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.identifier isEqualToString:@"Add Note Segue"]) {
        MSENAddNoteViewController *addNoteVC = segue.destinationViewController;
        addNoteVC.delegate = self;
	}
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    notes = [NSMutableArray arrayWithObjects:@"Note 1", @"Note 2", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [notes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Note Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [notes objectAtIndex: indexPath.row];
    
    return cell;
}

@end
