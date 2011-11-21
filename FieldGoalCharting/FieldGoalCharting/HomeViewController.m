//
//  HomeViewController.m
//  FieldGoalCharting
//
//  Created by Fries on 11/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HomeViewController.h"
#import "EnterDataChartViewController.h"

@implementation HomeViewController
@synthesize EnterStatsButton, ViewStatsButton;

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
}

- (void)viewDidUnload
{
    [self setEnterStatsButton:nil];
    [ViewStatsButton release];
    ViewStatsButton = nil;
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
    [EnterStatsButton release];
    [ViewStatsButton release];
    [super dealloc];
}
- (IBAction)EnterStats:(id)sender {
    EnterDataChartViewController *enterDataChartVC = [[EnterDataChartViewController alloc] init];
    [self.view addSubview:enterDataChartVC.view];
}

- (IBAction)ViewStats:(id)sender {
}
@end
