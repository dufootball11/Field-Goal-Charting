//
//  EnterDataChartViewController.m
//  FieldGoalCharting
//
//  Created by Fries on 11/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "EnterDataChartViewController.h"
#import "SegmentsController.h"
#import "NSArray+PerformSelector.h"

@interface EnterDataChartViewController ()
- (NSArray *)segmentViewControllers;
- (void)firstUserExperience;
@end

@implementation EnterDataChartViewController

@synthesize DistanceSegmentedControl, CurrentDistanceChartView, segmentsController;
@synthesize chartArray, enterDataNotesVC, navigationController;
@synthesize enterData18_25VC, enterData26_35VC,enterData36_45VC,enterData46_55VC,enterData56PlusVC;
@synthesize viewStatsVC, greenViewColor;

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
    greenViewColor = [[UIColor alloc] initWithRed:0 green:192 blue:69 alpha:1.0];

    CurrentDistanceChartView.clipsToBounds = YES;
    // Do any additional setup after loading the view from its nib.
    
    NSArray * viewControllers = [self segmentViewControllers];
    
    navigationController = [[[UINavigationController alloc] init] autorelease];
    
    self.segmentsController = [[SegmentsController alloc] initWithNavigationController:navigationController viewControllers:viewControllers];
    self.DistanceSegmentedControl = [[UISegmentedControl alloc] initWithItems:[viewControllers arrayByPerformingSelector:@selector(title)]];
    self.DistanceSegmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;

    
    [self.DistanceSegmentedControl addTarget:self.segmentsController
                              action:@selector(indexDidChangeForSegmentedControl:)
                    forControlEvents:UIControlEventValueChanged];
    
    [self firstUserExperience];
    
    [CurrentDistanceChartView addSubview:navigationController.view];
}

- (void)viewDidUnload
{
    [CancelButton release];
    CancelButton = nil;
    [SaveButton release];
    SaveButton = nil;
    [DistanceSegmentedContol release];
    DistanceSegmentedContol = nil;
    [CurrentDistanceChartView release];
    CurrentDistanceChartView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)Cancel:(id)sender {
    [self dismissModalViewControllerAnimated:NO];
}

- (IBAction)Save:(id)sender {
    
    /*Chart *chart = (Chart *)[NSEntityDescription insertNewObjectForEntityForName:@"Chart" inManagedObjectContext:self.managedObjectContext];  
    
    [chart setDate: [NSDate date]];
    [chart setLeft18_20Make: (NSNumber *) enterData18_25VC.LeftMade18_20];
    [chart setLeft18_20Miss: (NSNumber *) enterData18_25VC.Left18_20Miss];
    [chart setMiddle18_20Make: (NSNumber *) enterData18_25VC.MiddleMade18_20];
    [chart setMiddle18_20Miss: (NSNumber *) enterData18_25VC.Middle18_20Miss];
    [chart setRight18_20Make: (NSNumber *) enterData18_25VC.RightMade18_20];
    [chart setRight18_20Miss: (NSNumber *) enterData18_25VC.Right18_20Miss];
    
    [chart setTitle:[enterDataNotesVC.titleStringTextField text]];
    
    NSError *error;  
    
    if(![self.managedObjectContext save:&error]){  
        
        //This is a serious error saying the record  
        //could not be saved. Advise the user to  
        //try again or restart the application.   
        
    }  
    
    
    [chartArray insertObject:chart atIndex:0];     
    */
    
    viewStatsVC = [[ViewStatsViewController alloc] init];
    
    viewStatsVC._20LeftMake = enterData18_25VC.LeftMade18_20;
    viewStatsVC._20LeftMiss = enterData18_25VC.Left18_20Miss;
    viewStatsVC._20MiddleMake = enterData18_25VC.MiddleMade18_20;
    viewStatsVC._20MiddleMiss = enterData18_25VC.Middle18_20Miss;
    viewStatsVC._20RightMake = enterData18_25VC.RightMade18_20;
    viewStatsVC._20RightMiss = enterData18_25VC.Right18_20Miss;
    
    viewStatsVC._25LeftMake = enterData18_25VC.LeftMade21_25;
    viewStatsVC._25LeftMiss = enterData18_25VC.Left21_25Miss;
    viewStatsVC._25MiddleMake = enterData18_25VC.MiddleMade21_25;
    viewStatsVC._25MiddleMiss = enterData18_25VC.Middle21_25Miss;
    viewStatsVC._25RightMake = enterData18_25VC.RightMade21_25;
    viewStatsVC._25RightMiss = enterData18_25VC.Right21_25Miss;
    
    viewStatsVC._30LeftMake = enterData26_35VC.LeftMade26_30;
    viewStatsVC._30LeftMiss = enterData26_35VC.Left26_30Miss;
    viewStatsVC._30MiddleMake = enterData26_35VC.MiddleMade26_30;
    viewStatsVC._30MiddleMiss = enterData26_35VC.Middle26_30Miss;
    viewStatsVC._30RightMake = enterData26_35VC.RightMade26_30;
    viewStatsVC._30RightMiss = enterData26_35VC.Right26_30Miss;
    
    viewStatsVC._35LeftMake = enterData26_35VC.LeftMade31_35;
    viewStatsVC._35LeftMiss = enterData26_35VC.Left31_35Miss;
    viewStatsVC._35MiddleMake = enterData26_35VC.MiddleMade31_35;
    viewStatsVC._35MiddleMiss = enterData26_35VC.Middle31_35Miss;
    viewStatsVC._35RightMake = enterData26_35VC.RightMade31_35;
    viewStatsVC._35RightMiss = enterData26_35VC.Right31_35Miss;

    
    viewStatsVC._40LeftMake = enterData36_45VC.LeftMade36_40;
    viewStatsVC._40LeftMiss = enterData36_45VC.Left36_40Miss;
    viewStatsVC._40MiddleMake = enterData36_45VC.MiddleMade36_40;
    viewStatsVC._40MiddleMiss = enterData36_45VC.Middle36_40Miss;
    viewStatsVC._40RightMake = enterData36_45VC.RightMade36_40;
    viewStatsVC._40RightMiss = enterData36_45VC.Right36_40Miss;
    
    viewStatsVC._45LeftMake = enterData36_45VC.LeftMade41_45;
    viewStatsVC._45LeftMiss = enterData36_45VC.Left41_45Miss;
    viewStatsVC._45MiddleMake = enterData36_45VC.MiddleMade41_45;
    viewStatsVC._45MiddleMiss = enterData36_45VC.Middle41_45Miss;
    viewStatsVC._45RightMake = enterData36_45VC.RightMade41_45;
    viewStatsVC._45RightMiss = enterData36_45VC.Right41_45Miss;
    
    viewStatsVC._50LeftMake = enterData46_55VC.LeftMade46_50;
    viewStatsVC._50LeftMiss = enterData46_55VC.Left46_50Miss;
    viewStatsVC._50MiddleMake = enterData46_55VC.MiddleMade46_50;
    viewStatsVC._50MiddleMiss = enterData46_55VC.Middle46_50Miss;
    viewStatsVC._50RightMake = enterData46_55VC.RightMade46_50;
    viewStatsVC._50RightMiss = enterData46_55VC.Right46_50Miss;
    
    viewStatsVC._55LeftMake = enterData46_55VC.LeftMade51_55;
    viewStatsVC._55LeftMiss = enterData46_55VC.Left51_55Miss;
    viewStatsVC._55MiddleMake = enterData46_55VC.MiddleMade51_55;
    viewStatsVC._55MiddleMiss = enterData46_55VC.Middle51_55Miss;
    viewStatsVC._55RightMake = enterData46_55VC.RightMade51_55;
    viewStatsVC._55RightMiss = enterData46_55VC.Right51_55Miss;
    
    viewStatsVC._56LeftMake = enterData56PlusVC.LeftMade_56Plus;
    viewStatsVC._56LeftMiss = enterData56PlusVC.Left_56PlusMiss;
    viewStatsVC._56MiddleMake = enterData56PlusVC.MiddleMade_56Plus;
    viewStatsVC._56MiddleMiss = enterData56PlusVC.Middle_56PlusMiss;
    viewStatsVC._56RightMake = enterData56PlusVC.RightMade_56Plus;
    viewStatsVC._56RightMiss = enterData56PlusVC.Right_56PlusMiss;
    
    [self presentModalViewController:viewStatsVC animated:YES];
}

-(void) setData {
}

-(void) viewDidDisappear:(BOOL)animated {
    //[self.parentViewController dismissModalViewControllerAnimated:YES];
}


- (NSArray *)segmentViewControllers {
    
    enterData18_25VC = [[EnterData18_25ChartViewController alloc] initWithNibName:@"EnterData18_25ChartViewController" bundle:nil];
    enterData26_35VC = [[EnterData26_35ViewController alloc] initWithNibName:@"EnterData26_35ViewController" bundle:nil];
    enterData36_45VC = [[EnterData36_45ViewController alloc] initWithNibName:@"EnterData36_45ViewController" bundle:nil];
    enterData46_55VC = [[EnterData46_55ViewController alloc] initWithNibName:@"EnterData46_55ViewController" bundle:nil];
    enterData56PlusVC = [[EnterData56PlusViewController alloc] initWithNibName:@"EnterData56PlusViewController" bundle:nil];
    enterDataNotesVC = [[EnterDataNotesViewController alloc] initWithNibName:@"EnterDataNotesViewController" bundle:nil];
    
    NSArray * viewControllers = [NSArray arrayWithObjects:enterData18_25VC,enterData26_35VC,enterData36_45VC,enterData46_55VC,enterData56PlusVC, enterDataNotesVC, nil];
    
    return viewControllers;
}

- (void)firstUserExperience {
    self.DistanceSegmentedControl.selectedSegmentIndex = 0;
    [self.segmentsController indexDidChangeForSegmentedControl:self.DistanceSegmentedControl];
}


- (void)dealloc {
    [CancelButton release];
    [SaveButton release];
    [DistanceSegmentedContol release];
    [CurrentDistanceChartView release];
    [super dealloc];
}

@end
