//
//  notesViewStatsViewController.m
//  FieldGoalCharting
//
//  Created by Fries on 11/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "notesViewStatsViewController.h"

@implementation notesViewStatsViewController

@synthesize titleTextField, weatherTextField, windTextField, locationTextField, notesTextView;
@synthesize titleTextFieldString, weatherTextFieldString, windTextFieldString, locationTextFieldString, notesTextViewString;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Notes";
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    titleTextField.text = titleTextFieldString;
    weatherTextField.text = weatherTextFieldString;
    windTextField.text = windTextFieldString;
    locationTextField.text = locationTextFieldString;
    notesTextView.text = notesTextViewString;
}

- (void)viewDidUnload
{
    [self setTitleTextField:nil];
    [locationTextField release];
    locationTextField = nil;
    [weatherTextField release];
    weatherTextField = nil;
    [windTextField release];
    windTextField = nil;
    [notesTextView release];
    notesTextView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [titleTextField release];
    [locationTextField release];
    [weatherTextField release];
    [windTextField release];
    [notesTextView release];
    [super dealloc];
}
@end
