//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: EnterData56PLusViewController.m

//  description: implementation of the enterdata56plusviewcontroller class

#import "EnterData56PlusViewController.h"

@implementation EnterData56PlusViewController

//18-20 yards
@synthesize String_56PlusLeft, LeftMade_56Plus, String_56PlusMiddle, MiddleMade_56Plus, String_56PlusRight, RightMade_56Plus;
@synthesize String_56PlusLeftMiss, Left_56PlusMiss, String_56PlusMiddleMiss, Middle_56PlusMiss, String_56PlusRightMiss, Right_56PlusMiss;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"56+";

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
    LeftMade_56Plus = 0;
    MiddleMade_56Plus = 0;
    RightMade_56Plus = 0;
    Left_56PlusMiss = 0;
    Right_56PlusMiss = 0;
    Middle_56PlusMiss = 0;
}

//for the corresponding distance and direction, if the user presses the decrease button, decrement the total for that variable by one. if the user presses the increase button, increment the total for that variable by one

//18-20 yards
- (IBAction)_56LeftMakeDecrease:(id)sender {
    if (LeftMade_56Plus > 0) {
        LeftMade_56Plus = LeftMade_56Plus - 1;
    }
    String_56PlusLeft.text = [NSString stringWithFormat:@"%d", LeftMade_56Plus];
}

- (IBAction)_56MiddleMakeDecrease:(id)sender {
    if (MiddleMade_56Plus > 0) {
        MiddleMade_56Plus = MiddleMade_56Plus - 1;
    }
    String_56PlusMiddle.text = [NSString stringWithFormat:@"%d", MiddleMade_56Plus];
}

- (IBAction)_56RightMakeDecrease:(id)sender {
    if (RightMade_56Plus > 0) {
        RightMade_56Plus = RightMade_56Plus - 1;
    }
    String_56PlusRight.text = [NSString stringWithFormat:@"%d", RightMade_56Plus];
}

- (IBAction)_56LeftMakeIncrease:(id)sender {
    LeftMade_56Plus = LeftMade_56Plus + 1;
    String_56PlusLeft.text = [NSString stringWithFormat:@"%d", LeftMade_56Plus];
}

- (IBAction)_56MiddleMakeIncrease:(id)sender {
    MiddleMade_56Plus = MiddleMade_56Plus + 1;
    String_56PlusMiddle.text = [NSString stringWithFormat:@"%d", MiddleMade_56Plus];
}

- (IBAction)_56RightMakeIncrease:(id)sender {
    RightMade_56Plus = RightMade_56Plus + 1;
    String_56PlusRight.text = [NSString stringWithFormat:@"%d", RightMade_56Plus];
}

- (IBAction)_56LeftMissDecrease:(id)sender {
    if (Left_56PlusMiss > 0) {
        Left_56PlusMiss = Left_56PlusMiss - 1;
    }
    String_56PlusLeftMiss.text = [NSString stringWithFormat:@"%d", Left_56PlusMiss];
}

- (IBAction)_56MiddleMissDecrease:(id)sender {
    if (Middle_56PlusMiss > 0) {
        Middle_56PlusMiss = Middle_56PlusMiss - 1;
    }
    String_56PlusMiddleMiss.text = [NSString stringWithFormat:@"%d", Middle_56PlusMiss];
}

- (IBAction)_56RightMissDecrease:(id)sender {
    if (Right_56PlusMiss > 0) {
        Right_56PlusMiss = Right_56PlusMiss - 1;
    }
    String_56PlusRightMiss.text = [NSString stringWithFormat:@"%d", Right_56PlusMiss];
}

- (IBAction)_56LeftMissIncrease:(id)sender {
    Left_56PlusMiss = Left_56PlusMiss + 1;
    String_56PlusLeftMiss.text = [NSString stringWithFormat:@"%d", Left_56PlusMiss];
}

- (IBAction)_56MiddleMissIncrease:(id)sender {
    Middle_56PlusMiss = Middle_56PlusMiss + 1;
    String_56PlusMiddleMiss.text = [NSString stringWithFormat:@"%d", Middle_56PlusMiss];
}

- (IBAction)_56RightMissIncrease:(id)sender {
    Right_56PlusMiss = Right_56PlusMiss + 1;
    String_56PlusRightMiss.text = [NSString stringWithFormat:@"%d", Right_56PlusMiss];
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

-(void) dealloc {
    [String_56PlusLeft release];
    [String_56PlusRight release];
    [String_56PlusMiddle release];
    [String_56PlusLeftMiss release];
    [String_56PlusRightMiss release];
    [String_56PlusMiddleMiss release];
    [super dealloc];
}

@end
