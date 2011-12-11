//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: EnterDataChartViewController.m

//  description: implementation of the enterdatachartviewcontroller class

//import necessary header files
#import "EnterDataChartViewController.h"
#import "SegmentsController.h"
#import "NSArray+PerformSelector.h"

//segment controller interface
@interface EnterDataChartViewController ()
- (NSArray *)segmentViewControllers;
- (void)firstUserExperience;
@end

@implementation EnterDataChartViewController

//synthesize variables
@synthesize DistanceSegmentedControl, CurrentDistanceChartView, segmentsController;
@synthesize chartArray, enterDataNotesVC, navigationController;
@synthesize enterData18_25VC, enterData26_35VC,enterData36_45VC,enterData46_55VC,enterData56PlusVC;
@synthesize viewStatsVC, greenViewColor, managedObjectContext;

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
    
    //create array of view controllers to place in the segmented view controller
    NSArray * viewControllers = [self segmentViewControllers];
    
    //create a nav controller and add the segemented view selector to the nav controller
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

//dismiss the view controller if the user wants to cancel entering data
- (IBAction)Cancel:(id)sender {
    [self dismissModalViewControllerAnimated:NO];
}

//if the user wants to save the data, create a new chart entity and save the information to the corresponding attributes of the entity
- (IBAction)Save:(id)sender {
    //create new chart entity
    Chart *chart = (Chart *)[NSEntityDescription insertNewObjectForEntityForName:@"Chart" inManagedObjectContext:self.managedObjectContext];  
    
    //set the various attributes of the chart to the corresponding variables in the view controllers
    [chart setDate: [NSDate date]];
    [chart setLeft18_20Make: [NSNumber numberWithDouble: enterData18_25VC.LeftMade18_20]];
    [chart setLeft18_20Miss: [NSNumber numberWithDouble: enterData18_25VC.Left18_20Miss]];
    [chart setMiddle18_20Make: [NSNumber numberWithDouble: enterData18_25VC.MiddleMade18_20]];
    [chart setMiddle18_20Miss: [NSNumber numberWithDouble: enterData18_25VC.Middle18_20Miss]];
    [chart setRight18_20Make: [NSNumber numberWithDouble: enterData18_25VC.RightMade18_20]];
    [chart setRight18_20Miss: [NSNumber numberWithDouble: enterData18_25VC.Right18_20Miss]];
    
    [chart setLeft21_25Make: [NSNumber numberWithDouble: enterData18_25VC.LeftMade21_25]];
    [chart setLeft21_25Miss: [NSNumber numberWithDouble: enterData18_25VC.Left21_25Miss]];
    [chart setMiddle21_25Make: [NSNumber numberWithDouble: enterData18_25VC.MiddleMade21_25]];
    [chart setMiddle21_25Miss: [NSNumber numberWithDouble: enterData18_25VC.Middle21_25Miss]];
    [chart setRight21_25Make: [NSNumber numberWithDouble: enterData18_25VC.RightMade21_25]];
    [chart setRight21_25Miss: [NSNumber numberWithDouble: enterData18_25VC.Right21_25Miss]];
    
    [chart setLeft26_30Make: [NSNumber numberWithDouble: enterData26_35VC.LeftMade26_30]];
    [chart setLeft26_30Miss: [NSNumber numberWithDouble: enterData26_35VC.Left26_30Miss]];
    [chart setMiddle26_30Make: [NSNumber numberWithDouble: enterData26_35VC.MiddleMade26_30]];
    [chart setMiddle26_30Miss: [NSNumber numberWithDouble: enterData26_35VC.Middle26_30Miss]];
    [chart setRight26_30Make: [NSNumber numberWithDouble: enterData26_35VC.RightMade26_30]];
    [chart setRight26_30Miss: [NSNumber numberWithDouble: enterData26_35VC.Right26_30Miss]];
    
    [chart setLeft31_35Make: [NSNumber numberWithDouble: enterData26_35VC.LeftMade31_35]];
    [chart setLeft31_35Miss: [NSNumber numberWithDouble: enterData26_35VC.Left31_35Miss]];
    [chart setMiddle31_35Make: [NSNumber numberWithDouble: enterData26_35VC.MiddleMade31_35]];
    [chart setMiddle31_35Miss: [NSNumber numberWithDouble: enterData26_35VC.Middle31_35Miss]];
    [chart setRight31_35Make: [NSNumber numberWithDouble: enterData26_35VC.RightMade31_35]];
    [chart setRight31_35Miss: [NSNumber numberWithDouble: enterData26_35VC.Right31_35Miss]];
    
    [chart setLeft36_40Make: [NSNumber numberWithDouble: enterData36_45VC.LeftMade36_40]];
    [chart setLeft36_40Miss: [NSNumber numberWithDouble: enterData36_45VC.Left36_40Miss]];
    [chart setMiddle36_40Make: [NSNumber numberWithDouble: enterData36_45VC.MiddleMade36_40]];
    [chart setMiddle36_40Miss: [NSNumber numberWithDouble: enterData36_45VC.Middle36_40Miss]];
    [chart setRight36_40Make: [NSNumber numberWithDouble: enterData36_45VC.RightMade36_40]];
    [chart setRight36_40Miss: [NSNumber numberWithDouble: enterData36_45VC.Right36_40Miss]];
    
    [chart setLeft41_45Make: [NSNumber numberWithDouble: enterData36_45VC.LeftMade41_45]];
    [chart setLeft41_45Miss: [NSNumber numberWithDouble: enterData36_45VC.Left41_45Miss]];
    [chart setMiddle41_45Make: [NSNumber numberWithDouble: enterData36_45VC.MiddleMade41_45]];
    [chart setMiddle41_45Miss: [NSNumber numberWithDouble: enterData36_45VC.Middle41_45Miss]];
    [chart setRight41_45Make: [NSNumber numberWithDouble: enterData36_45VC.RightMade41_45]];
    [chart setRight41_45Miss: [NSNumber numberWithDouble: enterData36_45VC.Right41_45Miss]];
    
    [chart setLeft46_50Make: [NSNumber numberWithDouble: enterData46_55VC.LeftMade46_50]];
    [chart setLeft46_50Miss: [NSNumber numberWithDouble: enterData46_55VC.Left46_50Miss]];
    [chart setMiddle46_50Make: [NSNumber numberWithDouble: enterData46_55VC.MiddleMade46_50]];
    [chart setMiddle46_50Miss: [NSNumber numberWithDouble: enterData46_55VC.Middle46_50Miss]];
    [chart setRight46_50Make: [NSNumber numberWithDouble: enterData46_55VC.RightMade46_50]];
    [chart setRight46_50Miss: [NSNumber numberWithDouble: enterData46_55VC.Right46_50Miss]];
    
    [chart setLeft51_55Make: [NSNumber numberWithDouble: enterData46_55VC.LeftMade51_55]];
    [chart setLeft51_55Miss: [NSNumber numberWithDouble: enterData46_55VC.Left51_55Miss]];
    [chart setMiddle51_55Make: [NSNumber numberWithDouble: enterData46_55VC.MiddleMade51_55]];
    [chart setMiddle51_55Miss: [NSNumber numberWithDouble: enterData46_55VC.Middle51_55Miss]];
    [chart setRight51_55Make: [NSNumber numberWithDouble: enterData46_55VC.RightMade51_55]];
    [chart setRight51_55Miss: [NSNumber numberWithDouble: enterData46_55VC.Right51_55Miss]];
    
    [chart setLeft56PlusMake: [NSNumber numberWithDouble: enterData56PlusVC.LeftMade_56Plus]];
    [chart setLeft56PlusMiss: [NSNumber numberWithDouble: enterData56PlusVC.Left_56PlusMiss]];
    [chart setMiddle56PlusMake: [NSNumber numberWithDouble: enterData56PlusVC.MiddleMade_56Plus]];
    [chart setMiddle56PlusMiss: [NSNumber numberWithDouble: enterData56PlusVC.Middle_56PlusMiss]];
    [chart setRight56PlusMake: [NSNumber numberWithDouble: enterData56PlusVC.RightMade_56Plus]];
    [chart setRight56PlusMiss: [NSNumber numberWithDouble: enterData56PlusVC.Right_56PlusMiss]];
    
    [chart setTitle:[enterDataNotesVC.titleStringTextField text]];
    [chart setWeather:[enterDataNotesVC.weatherTextField text]];
    [chart setWind:[enterDataNotesVC.windTextField text]];
    [chart setLocation:[enterDataNotesVC.locationTextField text]];
    [chart setNotes:[enterDataNotesVC.notesTextView text]];

    
    
    NSError *error;  
    
    if(![self.managedObjectContext save:&error]){  
        
        //This is a serious error saying the record  
        //could not be saved. Advise the user to  
        //try again or restart the application.   
        
    }  
    
    
    [chartArray insertObject:chart atIndex:0];     
    
    //set the properties for the view controller to be presented with the current data
    viewStatsVC = [[ViewStatsViewController alloc] init];
    viewStatsVC.fromViewStatsVC = NO;
    
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
    
    ////////////
    viewStatsVC.titleString = enterDataNotesVC.titleStringTextField.text;
    viewStatsVC.locationString = enterDataNotesVC.locationTextField.text;
    viewStatsVC.weatherString = enterDataNotesVC.weatherTextField.text;
    viewStatsVC.windString = enterDataNotesVC.windTextField.text;
    viewStatsVC.notesString = enterDataNotesVC.notesTextView.text;
    
    //modally present the view controller
    [self presentModalViewController:viewStatsVC animated:YES];
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
