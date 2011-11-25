//
//  EnterData18_25ChartViewController.m
//  FieldGoalCharting
//
//  Created by Fries on 11/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "EnterData18_25ChartViewController.h"

@implementation EnterData18_25ChartViewController

//18-20 yards
@synthesize String18_20Left, LeftMade18_20, String18_20Middle, MiddleMade18_20, String18_20Right, RightMade18_20;
@synthesize String18_20LeftMiss, Left18_20Miss, String18_20MiddleMiss, Middle18_20Miss, String18_20RightMiss, Right18_20Miss;

//21-25 yards
@synthesize String21_25Left, LeftMade21_25, String21_25Middle, MiddleMade21_25, String21_25Right, RightMade21_25;
@synthesize String21_25LeftMiss, Left21_25Miss, String21_25MiddleMiss, Middle21_25Miss, String21_25RightMiss, Right21_25Miss;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"18-25";
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
    LeftMade18_20 = 0;
    MiddleMade18_20 = 0;
    RightMade18_20 = 0;
    Left18_20Miss = 0;
    Right18_20Miss = 0;
    Middle18_20Miss = 0;
}

- (void)viewDidUnload
{
    [String18_20Left release];
    String18_20Left = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

//18-20 yards
- (IBAction)_20LeftMakeDecrease:(id)sender {
    if (LeftMade18_20 > 0) {
        LeftMade18_20 = LeftMade18_20 - 1;
    }
    String18_20Left.text = [NSString stringWithFormat:@"%d", LeftMade18_20];
}

- (IBAction)_20MiddleMakeDecrease:(id)sender {
    if (MiddleMade18_20 > 0) {
        MiddleMade18_20 = MiddleMade18_20 - 1;
    }
    String18_20Middle.text = [NSString stringWithFormat:@"%d", MiddleMade18_20];
}

- (IBAction)_20RightMakeDecrease:(id)sender {
    if (RightMade18_20 > 0) {
        RightMade18_20 = RightMade18_20 - 1;
    }
    String18_20Right.text = [NSString stringWithFormat:@"%d", RightMade18_20];
}

- (IBAction)_20LeftMakeIncrease:(id)sender {
    LeftMade18_20 = LeftMade18_20 + 1;
    String18_20Left.text = [NSString stringWithFormat:@"%d", LeftMade18_20];
}

- (IBAction)_20MiddleMakeIncrease:(id)sender {
    MiddleMade18_20 = MiddleMade18_20 + 1;
    String18_20Middle.text = [NSString stringWithFormat:@"%d", MiddleMade18_20];
}

- (IBAction)_20RightMakeIncrease:(id)sender {
    RightMade18_20 = RightMade18_20 + 1;
    String18_20Right.text = [NSString stringWithFormat:@"%d", RightMade18_20];
}

- (IBAction)_20LeftMissDecrease:(id)sender {
    if (Left18_20Miss > 0) {
        Left18_20Miss = Left18_20Miss - 1;
    }
    String18_20LeftMiss.text = [NSString stringWithFormat:@"%d", Left18_20Miss];
}

- (IBAction)_20MiddleMissDecrease:(id)sender {
    if (Middle18_20Miss > 0) {
        Middle18_20Miss = Middle18_20Miss - 1;
    }
    String18_20MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle18_20Miss];
}

- (IBAction)_20RightMissDecrease:(id)sender {
    if (Right18_20Miss > 0) {
        Right18_20Miss = Right18_20Miss - 1;
    }
    String18_20RightMiss.text = [NSString stringWithFormat:@"%d", Right18_20Miss];
}

- (IBAction)_20LeftMissIncrease:(id)sender {
    Left18_20Miss = Left18_20Miss + 1;
    String18_20LeftMiss.text = [NSString stringWithFormat:@"%d", Left18_20Miss];
}

- (IBAction)_20MiddleMissIncrease:(id)sender {
    Middle18_20Miss = Middle18_20Miss + 1;
    String18_20MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle18_20Miss];
}

- (IBAction)_20RightMissIncrease:(id)sender {
    Right18_20Miss = Right18_20Miss + 1;
    String18_20RightMiss.text = [NSString stringWithFormat:@"%d", Right18_20Miss];
}

//21-25 yards
- (IBAction)_25LeftMakeDecrease:(id)sender {
    if (LeftMade21_25 > 0) {
        LeftMade21_25 = LeftMade21_25 - 1;
    }
    String21_25Left.text = [NSString stringWithFormat:@"%d", LeftMade21_25];
}

- (IBAction)_25MiddleMakeDecrease:(id)sender {
    if (MiddleMade21_25 > 0) {
        MiddleMade21_25 = MiddleMade21_25 - 1;
    }
    String21_25Middle.text = [NSString stringWithFormat:@"%d", MiddleMade21_25];
}

- (IBAction)_25RightMakeDecrease:(id)sender {
    if (RightMade21_25 > 0) {
        RightMade21_25 = RightMade21_25 - 1;
    }
    String21_25Right.text = [NSString stringWithFormat:@"%d", RightMade21_25];
}

- (IBAction)_25LeftMakeIncrease:(id)sender {
    LeftMade21_25 = LeftMade21_25 + 1;
    String21_25Left.text = [NSString stringWithFormat:@"%d", LeftMade21_25];
}

- (IBAction)_25MiddleMakeIncrease:(id)sender {
    MiddleMade21_25 = MiddleMade21_25 + 1;
    String21_25Middle.text = [NSString stringWithFormat:@"%d", MiddleMade21_25];
}

- (IBAction)_25RightMakeIncrease:(id)sender {
    RightMade21_25 = RightMade21_25 + 1;
    String21_25Right.text = [NSString stringWithFormat:@"%d", RightMade21_25];
}

- (IBAction)_25LeftMissDecrease:(id)sender {
    if (Left21_25Miss > 0) {
        Left21_25Miss = Left21_25Miss - 1;
    }
    String21_25LeftMiss.text = [NSString stringWithFormat:@"%d", Left21_25Miss];
}

- (IBAction)_25MiddleMissDecrease:(id)sender {
    if (Middle21_25Miss > 0) {
        Middle21_25Miss = Middle21_25Miss - 1;
    }
    String21_25MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle21_25Miss];
}

- (IBAction)_25RightMissDecrease:(id)sender {
    if (Right21_25Miss > 0) {
        Right21_25Miss = Right21_25Miss - 1;
    }
    String21_25RightMiss.text = [NSString stringWithFormat:@"%d", Right21_25Miss];
}

- (IBAction)_25LeftMissIncrease:(id)sender {
    Left21_25Miss = Left21_25Miss + 1;
    String21_25LeftMiss.text = [NSString stringWithFormat:@"%d", Left21_25Miss];
}

- (IBAction)_25MiddleMissIncrease:(id)sender {
    Middle21_25Miss = Middle21_25Miss + 1;
    String21_25MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle21_25Miss];
}

- (IBAction)_25RightMissIncrease:(id)sender {
    Right21_25Miss = Right21_25Miss + 1;
    String21_25RightMiss.text = [NSString stringWithFormat:@"%d", Right21_25Miss];
}

- (void)dealloc {
    [String18_20Left release];
    [super dealloc];
}
@end
