//
//  MSENBrowserViewController.m
//  EveryNote
//
//  Created by Christopher Judd on 12/2/13.
//  Copyright (c) 2013 Manifest Solutions. All rights reserved.
//

#import "MSENBrowserViewController.h"

@interface MSENBrowserViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *urlField;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation MSENBrowserViewController

@synthesize urlField;
@synthesize webView;

- (IBAction)browseTo:(id)sender {
    // hide keyboard
   [urlField resignFirstResponder];
   NSURL *url = [[NSURL alloc] initWithString:urlField.text];
   NSURLRequest *request = [[NSURLRequest alloc] initWithURL: url];
   [webView loadRequest:request];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self browseTo:textField];
    return YES;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    urlField.delegate = self;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
