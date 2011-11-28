//
//  EnterDataNotesViewController.m
//  FieldGoalCharting
//
//  Created by Fries on 11/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "EnterDataNotesViewController.h"

@implementation EnterDataNotesViewController
@synthesize titleStringTextField;
@synthesize gameOrPracticeSegmentedControl;
@synthesize locationTextField;
@synthesize weatherTextField;
@synthesize windTextField;
@synthesize notesTextView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title=@"Notes";
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
    titleStringTextField.delegate = self;
    locationTextField.delegate = self;
    weatherTextField.delegate = self;
    windTextField.delegate = self;
    notesTextView.delegate = self;

}

- (void)viewDidUnload
{
    [self setTitleStringTextField:nil];
    [self setGameOrPracticeSegmentedControl:nil];
    [self setLocationTextField:nil];
    [self setWeatherTextField:nil];
    [self setWindTextField:nil];
    [self setNotesTextView:nil];
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
    [titleStringTextField release];
    [gameOrPracticeSegmentedControl release];
    [locationTextField release];
    [weatherTextField release];
    [windTextField release];
    [notesTextView release];
    [super dealloc];
}

- (BOOL)textFieldShouldReturn:(UITextField*)aTextField
{
    [aTextField resignFirstResponder];
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range 
 replacementText:(NSString *)text
{
    
    if ([text isEqualToString:@"\n"]) {
        
        [textView resignFirstResponder];
        // Return FALSE so that the final '\n' character doesn't get added
        return NO;
    }
    // For any other character return TRUE so that the text gets added to the view
    return YES;
}


@end
