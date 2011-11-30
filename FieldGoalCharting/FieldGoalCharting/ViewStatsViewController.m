//
//  ViewStatsViewController.m
//  FieldGoalCharting
//
//  Created by Fries on 11/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewStatsViewController.h"
#import "SegmentsController.h"
#import "NSArray+PerformSelector.h"

@interface ViewStatsViewController ()
- (NSArray *)segmentViewControllers;
- (void)firstUserExperience;
@end


@implementation ViewStatsViewController

@synthesize segmentsController, viewSegmentedControl, navigationController, currentStatView;
@synthesize chartViewStatsVC, fieldViewStatsVC, notesViewStatsVC;
@synthesize _20LeftMake, _20LeftMiss, _20MiddleMake, _20MiddleMiss, _20RightMake, _20RightMiss;
@synthesize _25LeftMake, _25LeftMiss, _25MiddleMake, _25MiddleMiss, _25RightMake, _25RightMiss;
@synthesize _30LeftMake, _30LeftMiss, _30MiddleMake, _30MiddleMiss, _30RightMake, _30RightMiss;
@synthesize _35LeftMake, _35LeftMiss, _35MiddleMake, _35MiddleMiss, _35RightMake, _35RightMiss;
@synthesize _40LeftMake, _40LeftMiss, _40MiddleMake, _40MiddleMiss, _40RightMake, _40RightMiss;
@synthesize _45LeftMake, _45LeftMiss, _45MiddleMake, _45MiddleMiss, _45RightMake, _45RightMiss;
@synthesize _50LeftMake, _50LeftMiss, _50MiddleMake, _50MiddleMiss, _50RightMake, _50RightMiss;
@synthesize _55LeftMake, _55LeftMiss, _55MiddleMake, _55MiddleMiss, _55RightMake, _55RightMiss;
@synthesize _56LeftMake, _56LeftMiss, _56MiddleMake, _56MiddleMiss, _56RightMake, _56RightMiss;

@synthesize delegate, greenViewColor;
@synthesize titleString, locationString, weatherString, windString, notesString;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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
    greenViewColor = [[UIColor alloc] initWithRed:0 green:192 blue:69 alpha:1.0];

    currentStatView.clipsToBounds = YES;
    // Do any additional setup after loading the view from its nib.
    
    NSArray * viewControllers = [self segmentViewControllers];
    
    navigationController = [[[UINavigationController alloc] init] autorelease];
    
    self.segmentsController = [[SegmentsController alloc] initWithNavigationController:navigationController viewControllers:viewControllers];
    self.viewSegmentedControl = [[UISegmentedControl alloc] initWithItems:[viewControllers arrayByPerformingSelector:@selector(title)]];
    self.viewSegmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;
    
    
    [self.viewSegmentedControl addTarget:self.segmentsController
                                      action:@selector(indexDidChangeForSegmentedControl:)
                            forControlEvents:UIControlEventValueChanged];
    
    [self firstUserExperience];
    
    [currentStatView addSubview:navigationController.view];
}

- (void)viewDidUnload
{
    [currentStatView release];
    currentStatView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (NSArray *)segmentViewControllers {
    
    chartViewStatsVC = [[chartViewStatsViewController alloc] initWithNibName:@"chartViewStatsViewController" bundle:nil];
    fieldViewStatsVC = [[fieldViewStatsViewController alloc] initWithNibName:@"fieldViewStatsViewController" bundle:nil];
    notesViewStatsVC = [[notesViewStatsViewController alloc] initWithNibName:@"notesViewStatsViewController" bundle:nil];
    
    self.fieldViewStatsVC._20LeftMake = _20LeftMake;
    self.fieldViewStatsVC._20LeftMiss = _20LeftMiss;
    self.fieldViewStatsVC._20MiddleMake = _20MiddleMake;
    self.fieldViewStatsVC._20MiddleMiss = _20MiddleMiss;
    self.fieldViewStatsVC._20RightMake = _20RightMake;
    self.fieldViewStatsVC._20RightMiss = _20RightMiss;
    
    self.fieldViewStatsVC._25LeftMake = _25LeftMake;
    self.fieldViewStatsVC._25LeftMiss = _25LeftMiss;
    self.fieldViewStatsVC._25MiddleMake = _25MiddleMake;
    self.fieldViewStatsVC._25MiddleMiss = _25MiddleMiss;
    self.fieldViewStatsVC._25RightMake = _25RightMake;
    self.fieldViewStatsVC._25RightMiss = _25RightMiss;
    
    self.fieldViewStatsVC._30LeftMake = _30LeftMake;
    self.fieldViewStatsVC._30LeftMiss = _30LeftMiss;
    self.fieldViewStatsVC._30MiddleMake = _30MiddleMake;
    self.fieldViewStatsVC._30MiddleMiss = _30MiddleMiss;
    self.fieldViewStatsVC._30RightMake = _30RightMake;
    self.fieldViewStatsVC._30RightMiss = _30RightMiss;
    
    self.fieldViewStatsVC._35LeftMake = _35LeftMake;
    self.fieldViewStatsVC._35LeftMiss = _35LeftMiss;
    self.fieldViewStatsVC._35MiddleMake = _35MiddleMake;
    self.fieldViewStatsVC._35MiddleMiss = _35MiddleMiss;
    self.fieldViewStatsVC._35RightMake = _35RightMake;
    self.fieldViewStatsVC._35RightMiss = _35RightMiss;
    
    self.fieldViewStatsVC._40LeftMake = _40LeftMake;
    self.fieldViewStatsVC._40LeftMiss = _40LeftMiss;
    self.fieldViewStatsVC._40MiddleMake = _40MiddleMake;
    self.fieldViewStatsVC._40MiddleMiss = _40MiddleMiss;
    self.fieldViewStatsVC._40RightMake = _40RightMake;
    self.fieldViewStatsVC._40RightMiss = _40RightMiss;
    
    self.fieldViewStatsVC._45LeftMake = _45LeftMake;
    self.fieldViewStatsVC._45LeftMiss = _45LeftMiss;
    self.fieldViewStatsVC._45MiddleMake = _45MiddleMake;
    self.fieldViewStatsVC._45MiddleMiss = _45MiddleMiss;
    self.fieldViewStatsVC._45RightMake = _45RightMake;
    self.fieldViewStatsVC._45RightMiss = _45RightMiss;
    
    self.fieldViewStatsVC._50LeftMake = _50LeftMake;
    self.fieldViewStatsVC._50LeftMiss = _50LeftMiss;
    self.fieldViewStatsVC._50MiddleMake = _50MiddleMake;
    self.fieldViewStatsVC._50MiddleMiss = _50MiddleMiss;
    self.fieldViewStatsVC._50RightMake = _50RightMake;
    self.fieldViewStatsVC._50RightMiss = _50RightMiss;
    
    self.fieldViewStatsVC._55LeftMake = _55LeftMake;
    self.fieldViewStatsVC._55LeftMiss = _55LeftMiss;
    self.fieldViewStatsVC._55MiddleMake = _55MiddleMake;
    self.fieldViewStatsVC._55MiddleMiss = _55MiddleMiss;
    self.fieldViewStatsVC._55RightMake = _55RightMake;
    self.fieldViewStatsVC._55RightMiss = _55RightMiss;
    
    self.fieldViewStatsVC._56LeftMake = _56LeftMake;
    self.fieldViewStatsVC._56LeftMiss = _56LeftMiss;
    self.fieldViewStatsVC._56MiddleMake = _56MiddleMake;
    self.fieldViewStatsVC._56MiddleMiss = _56MiddleMiss;
    self.fieldViewStatsVC._56RightMake = _56RightMake;
    self.fieldViewStatsVC._56RightMiss = _56RightMiss;
    
    /////////
    self.chartViewStatsVC._20LeftMake = _20LeftMake;
    self.chartViewStatsVC._20LeftMiss = _20LeftMiss;
    self.chartViewStatsVC._20MiddleMake = _20MiddleMake;
    self.chartViewStatsVC._20MiddleMiss = _20MiddleMiss;
    self.chartViewStatsVC._20RightMake = _20RightMake;
    self.chartViewStatsVC._20RightMiss = _20RightMiss;
    
    self.chartViewStatsVC._25LeftMake = _25LeftMake;
    self.chartViewStatsVC._25LeftMiss = _25LeftMiss;
    self.chartViewStatsVC._25MiddleMake = _25MiddleMake;
    self.chartViewStatsVC._25MiddleMiss = _25MiddleMiss;
    self.chartViewStatsVC._25RightMake = _25RightMake;
    self.chartViewStatsVC._25RightMiss = _25RightMiss;
    
    self.chartViewStatsVC._30LeftMake = _30LeftMake;
    self.chartViewStatsVC._30LeftMiss = _30LeftMiss;
    self.chartViewStatsVC._30MiddleMake = _30MiddleMake;
    self.chartViewStatsVC._30MiddleMiss = _30MiddleMiss;
    self.chartViewStatsVC._30RightMake = _30RightMake;
    self.chartViewStatsVC._30RightMiss = _30RightMiss;
    
    self.chartViewStatsVC._35LeftMake = _35LeftMake;
    self.chartViewStatsVC._35LeftMiss = _35LeftMiss;
    self.chartViewStatsVC._35MiddleMake = _35MiddleMake;
    self.chartViewStatsVC._35MiddleMiss = _35MiddleMiss;
    self.chartViewStatsVC._35RightMake = _35RightMake;
    self.chartViewStatsVC._35RightMiss = _35RightMiss;
    
    self.chartViewStatsVC._40LeftMake = _40LeftMake;
    self.chartViewStatsVC._40LeftMiss = _40LeftMiss;
    self.chartViewStatsVC._40MiddleMake = _40MiddleMake;
    self.chartViewStatsVC._40MiddleMiss = _40MiddleMiss;
    self.chartViewStatsVC._40RightMake = _40RightMake;
    self.chartViewStatsVC._40RightMiss = _40RightMiss;
    
    self.chartViewStatsVC._45LeftMake = _45LeftMake;
    self.chartViewStatsVC._45LeftMiss = _45LeftMiss;
    self.chartViewStatsVC._45MiddleMake = _45MiddleMake;
    self.chartViewStatsVC._45MiddleMiss = _45MiddleMiss;
    self.chartViewStatsVC._45RightMake = _45RightMake;
    self.chartViewStatsVC._45RightMiss = _45RightMiss;
    
    self.chartViewStatsVC._50LeftMake = _50LeftMake;
    self.chartViewStatsVC._50LeftMiss = _50LeftMiss;
    self.chartViewStatsVC._50MiddleMake = _50MiddleMake;
    self.chartViewStatsVC._50MiddleMiss = _50MiddleMiss;
    self.chartViewStatsVC._50RightMake = _50RightMake;
    self.chartViewStatsVC._50RightMiss = _50RightMiss;
    
    self.chartViewStatsVC._55LeftMake = _55LeftMake;
    self.chartViewStatsVC._55LeftMiss = _55LeftMiss;
    self.chartViewStatsVC._55MiddleMake = _55MiddleMake;
    self.chartViewStatsVC._55MiddleMiss = _55MiddleMiss;
    self.chartViewStatsVC._55RightMake = _55RightMake;
    self.chartViewStatsVC._55RightMiss = _55RightMiss;
    
    self.chartViewStatsVC._56LeftMake = _56LeftMake;
    self.chartViewStatsVC._56LeftMiss = _56LeftMiss;
    self.chartViewStatsVC._56MiddleMake = _56MiddleMake;
    self.chartViewStatsVC._56MiddleMiss = _56MiddleMiss;
    self.chartViewStatsVC._56RightMake = _56RightMake;
    self.chartViewStatsVC._56RightMiss = _56RightMiss;
    
    ///////
    self.notesViewStatsVC.titleTextFieldString = titleString;
    self.notesViewStatsVC.locationTextFieldString = locationString;
    self.notesViewStatsVC.weatherTextFieldString = weatherString;
    self.notesViewStatsVC.windTextFieldString = windString;
    self.notesViewStatsVC.notesTextViewString = notesString;
    
    NSArray * viewControllers = [NSArray arrayWithObjects:chartViewStatsVC, fieldViewStatsVC, notesViewStatsVC, nil];
    
    return viewControllers;
}

- (void)firstUserExperience {
    self.viewSegmentedControl.selectedSegmentIndex = 0;
    [self.segmentsController indexDidChangeForSegmentedControl:self.viewSegmentedControl];
}

- (void)dealloc {
    [currentStatView release];
    [super dealloc];
}

- (IBAction)doneWithViews:(id)sender {
    [self.parentViewController.parentViewController dismissModalViewControllerAnimated:YES];
    [self dismissModalViewControllerAnimated:YES];
}

@end
