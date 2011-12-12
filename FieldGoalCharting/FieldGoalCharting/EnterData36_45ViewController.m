//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: EnterData36_45ChartViewController.m

//  description: implementation of the enterdata36_45viewcontroller class

#import "EnterData36_45ViewController.h"

@implementation EnterData36_45ViewController

//18-20 yards
@synthesize String36_40Left, LeftMade36_40, String36_40Middle, MiddleMade36_40, String36_40Right, RightMade36_40;
@synthesize String36_40LeftMiss, Left36_40Miss, String36_40MiddleMiss, Middle36_40Miss, String36_40RightMiss, Right36_40Miss;

//21-25 yards
@synthesize String41_45Left, LeftMade41_45, String41_45Middle, MiddleMade41_45, String41_45Right, RightMade41_45;
@synthesize String41_45LeftMiss, Left41_45Miss, String41_45MiddleMiss, Middle41_45Miss, String41_45RightMiss, Right41_45Miss;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"36-45";

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
    LeftMade36_40 = 0;
    MiddleMade36_40 = 0;
    RightMade36_40 = 0;
    Left36_40Miss = 0;
    Right36_40Miss = 0;
    Middle36_40Miss = 0;
    
    LeftMade41_45 = 0;
    MiddleMade41_45 = 0;
    RightMade41_45 = 0;
    Left41_45Miss = 0;
    Right41_45Miss = 0;
    Middle41_45Miss = 0;
}

//for the corresponding distance and direction, if the user presses the decrease button, decrement the total for that variable by one. if the user presses the increase button, increment the total for that variable by one

//18-20 yards
- (IBAction)_40LeftMakeDecrease:(id)sender {
    if (LeftMade36_40 > 0) {
        LeftMade36_40 = LeftMade36_40 - 1;
    }
    String36_40Left.text = [NSString stringWithFormat:@"%d", LeftMade36_40];
}

- (IBAction)_40MiddleMakeDecrease:(id)sender {
    if (MiddleMade36_40 > 0) {
        MiddleMade36_40 = MiddleMade36_40 - 1;
    }
    String36_40Middle.text = [NSString stringWithFormat:@"%d", MiddleMade36_40];
}

- (IBAction)_40RightMakeDecrease:(id)sender {
    if (RightMade36_40 > 0) {
        RightMade36_40 = RightMade36_40 - 1;
    }
    String36_40Right.text = [NSString stringWithFormat:@"%d", RightMade36_40];
}

- (IBAction)_40LeftMakeIncrease:(id)sender {
    LeftMade36_40 = LeftMade36_40 + 1;
    String36_40Left.text = [NSString stringWithFormat:@"%d", LeftMade36_40];
}

- (IBAction)_40MiddleMakeIncrease:(id)sender {
    MiddleMade36_40 = MiddleMade36_40 + 1;
    String36_40Middle.text = [NSString stringWithFormat:@"%d", MiddleMade36_40];
}

- (IBAction)_40RightMakeIncrease:(id)sender {
    RightMade36_40 = RightMade36_40 + 1;
    String36_40Right.text = [NSString stringWithFormat:@"%d", RightMade36_40];
}

- (IBAction)_40LeftMissDecrease:(id)sender {
    if (Left36_40Miss > 0) {
        Left36_40Miss = Left36_40Miss - 1;
    }
    String36_40LeftMiss.text = [NSString stringWithFormat:@"%d", Left36_40Miss];
}

- (IBAction)_40MiddleMissDecrease:(id)sender {
    if (Middle36_40Miss > 0) {
        Middle36_40Miss = Middle36_40Miss - 1;
    }
    String36_40MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle36_40Miss];
}

- (IBAction)_40RightMissDecrease:(id)sender {
    if (Right36_40Miss > 0) {
        Right36_40Miss = Right36_40Miss - 1;
    }
    String36_40RightMiss.text = [NSString stringWithFormat:@"%d", Right36_40Miss];
}

- (IBAction)_40LeftMissIncrease:(id)sender {
    Left36_40Miss = Left36_40Miss + 1;
    String36_40LeftMiss.text = [NSString stringWithFormat:@"%d", Left36_40Miss];
}

- (IBAction)_40MiddleMissIncrease:(id)sender {
    Middle36_40Miss = Middle36_40Miss + 1;
    String36_40MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle36_40Miss];
}

- (IBAction)_40RightMissIncrease:(id)sender {
    Right36_40Miss = Right36_40Miss + 1;
    String36_40RightMiss.text = [NSString stringWithFormat:@"%d", Right36_40Miss];
}

//21-25 yards
- (IBAction)_45LeftMakeDecrease:(id)sender {
    if (LeftMade41_45 > 0) {
        LeftMade41_45 = LeftMade41_45 - 1;
    }
    String41_45Left.text = [NSString stringWithFormat:@"%d", LeftMade41_45];
}

- (IBAction)_45MiddleMakeDecrease:(id)sender {
    if (MiddleMade41_45 > 0) {
        MiddleMade41_45 = MiddleMade41_45 - 1;
    }
    String41_45Middle.text = [NSString stringWithFormat:@"%d", MiddleMade41_45];
}

- (IBAction)_45RightMakeDecrease:(id)sender {
    if (RightMade41_45 > 0) {
        RightMade41_45 = RightMade41_45 - 1;
    }
    String41_45Right.text = [NSString stringWithFormat:@"%d", RightMade41_45];
}

- (IBAction)_45LeftMakeIncrease:(id)sender {
    LeftMade41_45 = LeftMade41_45 + 1;
    String41_45Left.text = [NSString stringWithFormat:@"%d", LeftMade41_45];
}

- (IBAction)_45MiddleMakeIncrease:(id)sender {
    MiddleMade41_45 = MiddleMade41_45 + 1;
    String41_45Middle.text = [NSString stringWithFormat:@"%d", MiddleMade41_45];
}

- (IBAction)_45RightMakeIncrease:(id)sender {
    RightMade41_45 = RightMade41_45 + 1;
    String41_45Right.text = [NSString stringWithFormat:@"%d", RightMade41_45];
}

- (IBAction)_45LeftMissDecrease:(id)sender {
    if (Left41_45Miss > 0) {
        Left41_45Miss = Left41_45Miss - 1;
    }
    String41_45LeftMiss.text = [NSString stringWithFormat:@"%d", Left41_45Miss];
}

- (IBAction)_45MiddleMissDecrease:(id)sender {
    if (Middle41_45Miss > 0) {
        Middle41_45Miss = Middle41_45Miss - 1;
    }
    String41_45MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle41_45Miss];
}

- (IBAction)_45RightMissDecrease:(id)sender {
    if (Right41_45Miss > 0) {
        Right41_45Miss = Right41_45Miss - 1;
    }
    String41_45RightMiss.text = [NSString stringWithFormat:@"%d", Right41_45Miss];
}

- (IBAction)_45LeftMissIncrease:(id)sender {
    Left41_45Miss = Left41_45Miss + 1;
    String41_45LeftMiss.text = [NSString stringWithFormat:@"%d", Left41_45Miss];
}

- (IBAction)_45MiddleMissIncrease:(id)sender {
    Middle41_45Miss = Middle41_45Miss + 1;
    String41_45MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle41_45Miss];
}

- (IBAction)_45RightMissIncrease:(id)sender {
    Right41_45Miss = Right41_45Miss + 1;
    String41_45RightMiss.text = [NSString stringWithFormat:@"%d", Right41_45Miss];
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
    [String36_40Left release];
    [String36_40Right release];
    [String36_40Middle release];
    [String36_40LeftMiss release];
    [String36_40RightMiss release];
    [String36_40MiddleMiss release];
    [String41_45Left release];
    [String41_45Right release];
    [String41_45Middle release];
    [String41_45LeftMiss release];
    [String41_45RightMiss release];
    [String41_45MiddleMiss release];
    [super dealloc];
}

@end
