//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: EnterData26_35ChartViewController.m

//  description: implementation of the enterdata26_35viewcontroller class

#import "EnterData26_35ViewController.h"

@implementation EnterData26_35ViewController

//26-30 yards
@synthesize String26_30Left, LeftMade26_30, String26_30Middle, MiddleMade26_30, String26_30Right, RightMade26_30;
@synthesize String26_30LeftMiss, Left26_30Miss, String26_30MiddleMiss, Middle26_30Miss, String26_30RightMiss, Right26_30Miss;

//31-35 yards
@synthesize String31_35Left, LeftMade31_35, String31_35Middle, MiddleMade31_35, String31_35Right, RightMade31_35;
@synthesize String31_35LeftMiss, Left31_35Miss, String31_35MiddleMiss, Middle31_35Miss, String31_35RightMiss, Right31_35Miss;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"26-35";
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
    
    LeftMade26_30 = 0;
    MiddleMade26_30 = 0;
    RightMade26_30 = 0;
    Left26_30Miss = 0;
    Right26_30Miss = 0;
    Middle26_30Miss = 0;
    
    LeftMade31_35 = 0;
    MiddleMade31_35 = 0;
    RightMade31_35 = 0;
    Left31_35Miss = 0;
    Right31_35Miss = 0;
    Middle31_35Miss = 0;
}

//for the corresponding distance and direction, if the user presses the decrease button, decrement the total for that variable by one. if the user presses the increase button, increment the total for that variable by one

//18-20 yards
- (IBAction)_30LeftMakeDecrease:(id)sender {
    if (LeftMade26_30 > 0) {
        LeftMade26_30 = LeftMade26_30 - 1;
    }
    String26_30Left.text = [NSString stringWithFormat:@"%d", LeftMade26_30];
}

- (IBAction)_30MiddleMakeDecrease:(id)sender {
    if (MiddleMade26_30 > 0) {
        MiddleMade26_30 = MiddleMade26_30 - 1;
    }
    String26_30Middle.text = [NSString stringWithFormat:@"%d", MiddleMade26_30];
}

- (IBAction)_30RightMakeDecrease:(id)sender {
    if (RightMade26_30 > 0) {
        RightMade26_30 = RightMade26_30 - 1;
    }
    String26_30Right.text = [NSString stringWithFormat:@"%d", RightMade26_30];
}

- (IBAction)_30LeftMakeIncrease:(id)sender {
    LeftMade26_30 = LeftMade26_30 + 1;
    String26_30Left.text = [NSString stringWithFormat:@"%d", LeftMade26_30];
}

- (IBAction)_30MiddleMakeIncrease:(id)sender {
    MiddleMade26_30 = MiddleMade26_30 + 1;
    String26_30Middle.text = [NSString stringWithFormat:@"%d", MiddleMade26_30];
}

- (IBAction)_30RightMakeIncrease:(id)sender {
    RightMade26_30 = RightMade26_30 + 1;
    String26_30Right.text = [NSString stringWithFormat:@"%d", RightMade26_30];
}

- (IBAction)_30LeftMissDecrease:(id)sender {
    if (Left26_30Miss > 0) {
        Left26_30Miss = Left26_30Miss - 1;
    }
    String26_30LeftMiss.text = [NSString stringWithFormat:@"%d", Left26_30Miss];
}

- (IBAction)_30MiddleMissDecrease:(id)sender {
    if (Middle26_30Miss > 0) {
        Middle26_30Miss = Middle26_30Miss - 1;
    }
    String26_30MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle26_30Miss];
}

- (IBAction)_30RightMissDecrease:(id)sender {
    if (Right26_30Miss > 0) {
        Right26_30Miss = Right26_30Miss - 1;
    }
    String26_30RightMiss.text = [NSString stringWithFormat:@"%d", Right26_30Miss];
}

- (IBAction)_30LeftMissIncrease:(id)sender {
    Left26_30Miss = Left26_30Miss + 1;
    String26_30LeftMiss.text = [NSString stringWithFormat:@"%d", Left26_30Miss];
}

- (IBAction)_30MiddleMissIncrease:(id)sender {
    Middle26_30Miss = Middle26_30Miss + 1;
    String26_30MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle26_30Miss];
}

- (IBAction)_30RightMissIncrease:(id)sender {
    Right26_30Miss = Right26_30Miss + 1;
    String26_30RightMiss.text = [NSString stringWithFormat:@"%d", Right26_30Miss];
}

//21-25 yards
- (IBAction)_35LeftMakeDecrease:(id)sender {
    if (LeftMade31_35 > 0) {
        LeftMade31_35 = LeftMade31_35 - 1;
    }
    String31_35Left.text = [NSString stringWithFormat:@"%d", LeftMade31_35];
}

- (IBAction)_35MiddleMakeDecrease:(id)sender {
    if (MiddleMade31_35 > 0) {
        MiddleMade31_35 = MiddleMade31_35 - 1;
    }
    String31_35Middle.text = [NSString stringWithFormat:@"%d", MiddleMade31_35];
}

- (IBAction)_35RightMakeDecrease:(id)sender {
    if (RightMade31_35 > 0) {
        RightMade31_35 = RightMade31_35 - 1;
    }
    String31_35Right.text = [NSString stringWithFormat:@"%d", RightMade31_35];
}

- (IBAction)_35LeftMakeIncrease:(id)sender {
    LeftMade31_35 = LeftMade31_35 + 1;
    String31_35Left.text = [NSString stringWithFormat:@"%d", LeftMade31_35];
}

- (IBAction)_35MiddleMakeIncrease:(id)sender {
    MiddleMade31_35 = MiddleMade31_35 + 1;
    String31_35Middle.text = [NSString stringWithFormat:@"%d", MiddleMade31_35];
}

- (IBAction)_35RightMakeIncrease:(id)sender {
    RightMade31_35 = RightMade31_35 + 1;
    String31_35Right.text = [NSString stringWithFormat:@"%d", RightMade31_35];
}

- (IBAction)_35LeftMissDecrease:(id)sender {
    if (Left31_35Miss > 0) {
        Left31_35Miss = Left31_35Miss - 1;
    }
    String31_35LeftMiss.text = [NSString stringWithFormat:@"%d", Left31_35Miss];
}

- (IBAction)_35MiddleMissDecrease:(id)sender {
    if (Middle31_35Miss > 0) {
        Middle31_35Miss = Middle31_35Miss - 1;
    }
    String31_35MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle31_35Miss];
}

- (IBAction)_35RightMissDecrease:(id)sender {
    if (Right31_35Miss > 0) {
        Right31_35Miss = Right31_35Miss - 1;
    }
    String31_35RightMiss.text = [NSString stringWithFormat:@"%d", Right31_35Miss];
}

- (IBAction)_35LeftMissIncrease:(id)sender {
    Left31_35Miss = Left31_35Miss + 1;
    String31_35LeftMiss.text = [NSString stringWithFormat:@"%d", Left31_35Miss];
}

- (IBAction)_35MiddleMissIncrease:(id)sender {
    Middle31_35Miss = Middle31_35Miss + 1;
    String31_35MiddleMiss.text = [NSString stringWithFormat:@"%d", Middle31_35Miss];
}

- (IBAction)_35RightMissIncrease:(id)sender {
    Right31_35Miss = Right31_35Miss + 1;
    String31_35RightMiss.text = [NSString stringWithFormat:@"%d", Right31_35Miss];
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
