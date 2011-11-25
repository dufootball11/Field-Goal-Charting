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
//@synthesize enterData18_25VC,enterData26_35VC,enterData36_45VC,enterData46_55VC,enterData56PlusVC;

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
    CurrentDistanceChartView.clipsToBounds = YES;
    // Do any additional setup after loading the view from its nib.
    
    NSArray * viewControllers = [self segmentViewControllers];
    
    UINavigationController * navigationController = [[[UINavigationController alloc] init] autorelease];
    
    self.segmentsController = [[SegmentsController alloc] initWithNavigationController:navigationController viewControllers:viewControllers];
    self.DistanceSegmentedControl = [[UISegmentedControl alloc] initWithItems:[viewControllers arrayByPerformingSelector:@selector(title)]];
    self.DistanceSegmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;

    
    [self.DistanceSegmentedControl addTarget:self.segmentsController
                              action:@selector(indexDidChangeForSegmentedControl:)
                    forControlEvents:UIControlEventValueChanged];
    
    [self firstUserExperience];
    
    [CurrentDistanceChartView addSubview:navigationController.view];
}

- (IBAction)ChangeDistanceSegment:(id)sender {
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
    [self.view removeFromSuperview];
}

- (IBAction)Save:(id)sender {
}

- (NSArray *)segmentViewControllers {
    
    UIViewController *enterData18_25VC = [[EnterData18_25ChartViewController alloc] initWithNibName:@"EnterData18_25ChartViewController" bundle:nil];
    UIViewController *enterData26_35VC = [[EnterData26_35ViewController alloc] initWithNibName:@"EnterData26_35ViewController" bundle:nil];
    UIViewController *enterData36_45VC = [[EnterData36_45ViewController alloc] initWithNibName:@"EnterData36_45ViewController" bundle:nil];
    UIViewController *enterData46_55VC = [[EnterData46_55ViewController alloc] initWithNibName:@"EnterData46_55ViewController" bundle:nil];
    UIViewController *enterData56PlusVC = [[EnterData56PlusViewController alloc] initWithNibName:@"EnterData56PlusViewController" bundle:nil];
    
    NSArray * viewControllers = [NSArray arrayWithObjects:enterData18_25VC,enterData26_35VC,enterData36_45VC,enterData46_55VC,enterData56PlusVC, nil];
    //NSLog(@"%@",viewControllers);
    
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
