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
