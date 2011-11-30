//
//  chartViewStatsViewController.m
//  FieldGoalCharting
//
//  Created by Fries on 11/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "chartViewStatsViewController.h"

@implementation chartViewStatsViewController

@synthesize _20LeftLabel, _20MiddleLabel, _20RightLabel,_25LeftLabel, _25MiddleLabel, _25RightLabel,_30LeftLabel, _30MiddleLabel, _30RightLabel,_35LeftLabel, _35MiddleLabel, _35RightLabel,_40LeftLabel, _40MiddleLabel, _40RightLabel, _45LeftLabel, _45MiddleLabel, _45RightLabel,_50LeftLabel, _50MiddleLabel, _50RightLabel,_55LeftLabel, _55MiddleLabel, _55RightLabel,_56LeftLabel, _56MiddleLabel, _56RightLabel;

@synthesize _20LeftMake, _20LeftMiss, _20MiddleMake, _20MiddleMiss, _20RightMake, _20RightMiss;
@synthesize _25LeftMake, _25LeftMiss, _25MiddleMake, _25MiddleMiss, _25RightMake, _25RightMiss;
@synthesize _30LeftMake, _30LeftMiss, _30MiddleMake, _30MiddleMiss, _30RightMake, _30RightMiss;
@synthesize _35LeftMake, _35LeftMiss, _35MiddleMake, _35MiddleMiss, _35RightMake, _35RightMiss;
@synthesize _40LeftMake, _40LeftMiss, _40MiddleMake, _40MiddleMiss, _40RightMake, _40RightMiss;
@synthesize _45LeftMake, _45LeftMiss, _45MiddleMake, _45MiddleMiss, _45RightMake, _45RightMiss;
@synthesize _50LeftMake, _50LeftMiss, _50MiddleMake, _50MiddleMiss, _50RightMake, _50RightMiss;
@synthesize _55LeftMake, _55LeftMiss, _55MiddleMake, _55MiddleMiss, _55RightMake, _55RightMiss;
@synthesize _56LeftMake, _56LeftMiss, _56MiddleMake, _56MiddleMiss, _56RightMake, _56RightMiss;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Chart";
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
    
    self._20LeftLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_20LeftMake,(int)(_20LeftMake+_20LeftMiss)];
    self._20MiddleLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_20MiddleMake,(int)(_20MiddleMake+_20MiddleMiss)];
    self._20RightLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_20RightMake,(int)(_20RightMake+_20RightMiss)];
    
    self._25LeftLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_25LeftMake,(int)(_25LeftMake+_25LeftMiss)];
    self._25MiddleLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_25MiddleMake,(int)(_25MiddleMake+_25MiddleMiss)];
    self._25RightLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_25RightMake,(int)(_25RightMake+_25RightMiss)];
    
    self._30LeftLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_30LeftMake,(int)(_30LeftMake+_30LeftMiss)];
    self._30MiddleLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_30MiddleMake,(int)(_30MiddleMake+_30MiddleMiss)];
    self._30RightLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_30RightMake,(int)(_30RightMake+_30RightMiss)];
    
    self._35LeftLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_35LeftMake,(int)(_35LeftMake+_35LeftMiss)];
    self._35MiddleLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_35MiddleMake,(int)(_35MiddleMake+_35MiddleMiss)];
    self._35RightLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_35RightMake,(int)(_35RightMake+_35RightMiss)];
    
    self._40LeftLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_40LeftMake,(int)(_40LeftMake+_40LeftMiss)];
    self._40MiddleLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_40MiddleMake,(int)(_40MiddleMake+_40MiddleMiss)];
    self._40RightLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_40RightMake,(int)(_40RightMake+_40RightMiss)];
    
    self._45LeftLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_45LeftMake,(int)(_45LeftMake+_45LeftMiss)];
    self._45MiddleLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_45MiddleMake,(int)(_45MiddleMake+_45MiddleMiss)];
    self._45RightLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_45RightMake,(int)(_45RightMake+_45RightMiss)];
    
    self._50LeftLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_50LeftMake,(int)(_50LeftMake+_50LeftMiss)];
    self._50MiddleLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_50MiddleMake,(int)(_50MiddleMake+_50MiddleMiss)];
    self._50RightLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_50RightMake,(int)(_50RightMake+_50RightMiss)];
    
    self._55LeftLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_55LeftMake,(int)(_55LeftMake+_55LeftMiss)];
    self._55MiddleLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_55MiddleMake,(int)(_55MiddleMake+_55MiddleMiss)];
    self._55RightLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_55RightMake,(int)(_55RightMake+_55RightMiss)];
    
    self._56LeftLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_56LeftMake,(int)(_56LeftMake+_56LeftMiss)];
    self._56MiddleLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_56MiddleMake,(int)(_56MiddleMake+_56MiddleMiss)];
    self._56RightLabel.text = [NSString stringWithFormat:@"%d / %d",(int)_56RightMake,(int)(_56RightMake+_56RightMiss)];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
