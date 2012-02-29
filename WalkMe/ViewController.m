//
//  ViewController.m
//  WalkMe
//
//  Created by Soheil Yasrebi on 2/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize captureManager;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self setCaptureManager:[[CaptureSessionManager alloc] init]];
    
	[[self captureManager] addVideoInput];
    
	[[self captureManager] addVideoPreviewLayer];
	CGRect layerRect = [[[self view] layer] bounds];
//    layerRect.size.height = 140;
//    layerRect.size.width = 100;
	[[[self captureManager] previewLayer] setBounds:layerRect];
	[[[self captureManager] previewLayer] setPosition:CGPointMake(CGRectGetMidX(layerRect),
                                                                  CGRectGetMidY(layerRect))];
	[[[self view] layer] addSublayer:[[self captureManager] previewLayer]];
    
    UIImageView *overlayImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"overlaygraphic.png"]];
    [overlayImageView setFrame:CGRectMake(20, 20, 280, 180)];
    [[self view] addSubview:overlayImageView];
    
    UIButton *overlayButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [overlayButton setImage:[UIImage imageNamed:@"scanbutton.png"] forState:UIControlStateNormal];
    [overlayButton setFrame:CGRectMake(130, 320, 60, 30)];
    [overlayButton addTarget:self action:@selector(scanButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:overlayButton];
    
//    UILabel *tempLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 50, 120, 30)];
//    [self setScanningLabel:tempLabel];
//	[scanningLabel setBackgroundColor:[UIColor clearColor]];
//	[scanningLabel setFont:[UIFont fontWithName:@"Courier" size: 18.0]];
//	[scanningLabel setTextColor:[UIColor redColor]]; 
//	[scanningLabel setText:@"Scanning..."];
//    [scanningLabel setHidden:YES];
//	[[self view] addSubview:scanningLabel];	
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(30, 30, 260, 420)];
    [textView setBackgroundColor:[UIColor clearColor]];
    [textView setFont:[UIFont fontWithName:@"Arial" size: 18.0 ]];
    [textView becomeFirstResponder];
    [[self view] addSubview:textView];
    
    UIButton *tweetButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    tweetButton.frame = CGRectMake(30, 205, 88, 35);
    tweetButton.alpha = .5;
    [tweetButton setTitle:@"Tweet" forState:UIControlStateNormal];
    [[self view] addSubview:tweetButton];
    
    UIButton *smsButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    smsButton.frame = CGRectMake(30+88+3, 205, 88, 35);
    smsButton.alpha = .5;
    [smsButton setTitle:@"SMS" forState:UIControlStateNormal];
    [[self view] addSubview:smsButton];
    
    UIButton *emailButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    emailButton.frame = CGRectMake(30+88*2+3*2, 205, 88, 35);
    emailButton.alpha = .5;
    [emailButton setTitle:@"Email" forState:UIControlStateNormal];
    [[self view] addSubview:emailButton];
    
	[[captureManager captureSession] startRunning];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
