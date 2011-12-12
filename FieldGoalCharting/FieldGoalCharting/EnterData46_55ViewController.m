//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: EnterData46_55ChartViewController.m

//  description: implementation of the enterdata46_55viewcontroller class

#import "EnterData46_55ViewController.h"

@implementation EnterData46_55ViewController

//18-20 yards
@synthesize String46_50Left, LeftMade46_50, String46_50Middle, MiddleMade46_50, String46_50Right, RightMade46_50;
@synthesize String46_50LeftMiss, Left46_50Miss, String46_50MiddleMiss, Middle46_50Miss, String46_50RightMiss, Right46_50Miss;

//21-25 yards
@synthesize String51_55Left, LeftMade51_55, String51_55Middle, MiddleMade51_55, String51_55Right, RightMade51_55;
@synthesize String51_55LeftMiss, Left51_55Miss, String51_55MiddleMiss, Middle51_55Miss, String51_55RightMiss, Right51_55Miss;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"46-55";
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
    LeftMade46_50 = 0;
    MiddleMade46_50 = 0;
    RightMade46_50 = 0;
    Left46_50Miss = 0;
    Right46_50Miss = 0;
    Middle46_50Miss = 0;
    
    LeftMade51_55 = 0;
    MiddleMade51_55 = 0;
    RightMade51_55 = 0;
    Left51_55Miss = 0;
    Right51_55Miss = 0;
    Middle51_55Miss = 0;
}

//for the corresponding distance and direction, if the user presses the decrease button, decrement the total for that variable by one. if the user presses the increase button, increment the total for that variable by one

//18-20 yards
- (IBAction)_50LeftMakeDecrease:(id)sender {
    if (LeftMade46_50 > 0) {
        LeftMade46_50 = LeftMade46_50 - 1;
    }
    String46_50Left.text = [NSString stringWithFormat:@"%d", LeftMade46_50];
}

- (IBAction)_50MiddleMakeDecrease:(id)sender {
    if (MiddleMade46_50 > 0) {
        MiddleMade46_50 = MiddleMade46_50 - 1;
    }
    String46_50Middle.text = [NSString stringWithFormat:@"%d", MiddleMade46_50];
}

- (IBAction)_50RightMakeDecrease:(id)sender {
    if (RightMade46_50 > 0) {
        RightMade46_50 = RightMade46_50 - 1;
    }
    String46_50Right.text = [NSString stringWithFormat:@"%d", RightMade46_50];
}

- (IBAction)_50LeftMakeIncrease:(id)sender {
    LeftMade46_50 = LeftMade46_50 + 1;
    String46_50Left.text = [NSString stringWithFormat:@"%d", LeftMade46_50];
}

- (IBAction)_50MiddleMakeIncrease:(id)sender {
    MiddleMade46_50 = MiddleMade46_50 + 1;
    String46_50Middle.text = [NSString stringWithFormat:@"%d", MiddleMade46_50];
}

- (IBAction)_50RightMakeIncrease:(id)sender {
    RightMade46_50 = RightMade46_50 + 1;
    String46_50Right.text = [NSString stringWithFormat:@"%d", RightMade46_50];
}

- (IBAction)_50LeftMissDecrease:(id)sender {
    if (Left46_50Miss > 0) {
        Left46_50Miss = Left46_50Miss - 1;
    }
    String46_50LeftMiss.text = [NSString stringWithFormat:@"%d", Left46_50Miss];
}

- (IBAction)_50MiddleMissDecrease:(id)sender {
    if (Middle46_50Miss > 0) {
        Middle46_50Miss = Middle46_50Miss - 1;
    }
    String46_50MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle46_50Miss];
}

- (IBAction)_50RightMissDecrease:(id)sender {
    if (Right46_50Miss > 0) {
        Right46_50Miss = Right46_50Miss - 1;
    }
    String46_50RightMiss.text = [NSString stringWithFormat:@"%d", Right46_50Miss];
}

- (IBAction)_50LeftMissIncrease:(id)sender {
    Left46_50Miss = Left46_50Miss + 1;
    String46_50LeftMiss.text = [NSString stringWithFormat:@"%d", Left46_50Miss];
}

- (IBAction)_50MiddleMissIncrease:(id)sender {
    Middle46_50Miss = Middle46_50Miss + 1;
    String46_50MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle46_50Miss];
}

- (IBAction)_50RightMissIncrease:(id)sender {
    Right46_50Miss = Right46_50Miss + 1;
    String46_50RightMiss.text = [NSString stringWithFormat:@"%d", Right46_50Miss];
}

//21-25 yards
- (IBAction)_55LeftMakeDecrease:(id)sender {
    if (LeftMade51_55 > 0) {
        LeftMade51_55 = LeftMade51_55 - 1;
    }
    String51_55Left.text = [NSString stringWithFormat:@"%d", LeftMade51_55];
}

- (IBAction)_55MiddleMakeDecrease:(id)sender {
    if (MiddleMade51_55 > 0) {
        MiddleMade51_55 = MiddleMade51_55 - 1;
    }
    String51_55Middle.text = [NSString stringWithFormat:@"%d", MiddleMade51_55];
}

- (IBAction)_55RightMakeDecrease:(id)sender {
    if (RightMade51_55 > 0) {
        RightMade51_55 = RightMade51_55 - 1;
    }
    String51_55Right.text = [NSString stringWithFormat:@"%d", RightMade51_55];
}

- (IBAction)_55LeftMakeIncrease:(id)sender {
    LeftMade51_55 = LeftMade51_55 + 1;
    String51_55Left.text = [NSString stringWithFormat:@"%d", LeftMade51_55];
}

- (IBAction)_55MiddleMakeIncrease:(id)sender {
    MiddleMade51_55 = MiddleMade51_55 + 1;
    String51_55Middle.text = [NSString stringWithFormat:@"%d", MiddleMade51_55];
}

- (IBAction)_55RightMakeIncrease:(id)sender {
    RightMade51_55 = RightMade51_55 + 1;
    String51_55Right.text = [NSString stringWithFormat:@"%d", RightMade51_55];
}

- (IBAction)_55LeftMissDecrease:(id)sender {
    if (Left51_55Miss > 0) {
        Left51_55Miss = Left51_55Miss - 1;
    }
    String51_55LeftMiss.text = [NSString stringWithFormat:@"%d", Left51_55Miss];
}

- (IBAction)_55MiddleMissDecrease:(id)sender {
    if (Middle51_55Miss > 0) {
        Middle51_55Miss = Middle51_55Miss - 1;
    }
    String51_55MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle51_55Miss];
}

- (IBAction)_55RightMissDecrease:(id)sender {
    if (Right51_55Miss > 0) {
        Right51_55Miss = Right51_55Miss - 1;
    }
    String51_55RightMiss.text = [NSString stringWithFormat:@"%d", Right51_55Miss];
}

- (IBAction)_55LeftMissIncrease:(id)sender {
    Left51_55Miss = Left51_55Miss + 1;
    String51_55LeftMiss.text = [NSString stringWithFormat:@"%d", Left51_55Miss];
}

- (IBAction)_55MiddleMissIncrease:(id)sender {
    Middle51_55Miss = Middle51_55Miss + 1;
    String51_55MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle51_55Miss];
}

- (IBAction)_55RightMissIncrease:(id)sender {
    Right51_55Miss = Right51_55Miss + 1;
    String51_55RightMiss.text = [NSString stringWithFormat:@"%d", Right51_55Miss];
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
    [String46_50Left release];
    [String46_50Right release];
    [String46_50Middle release];
    [String46_50LeftMiss release];
    [String46_50RightMiss release];
    [String46_50MiddleMiss release];
    [String51_55Left release];
    [String51_55Right release];
    [String51_55Middle release];
    [String51_55LeftMiss release];
    [String51_55RightMiss release];
    [String51_55MiddleMiss release];
    [super dealloc];
}

@end
