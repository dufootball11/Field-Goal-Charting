//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: HomeViewController.m

//  description: Implementation of the HomeViewController class

//import necessary header files
#import "HomeViewController.h"
#import "EnterDataChartViewController.h"
#import "ViewStatsTableViewController.h"

@implementation HomeViewController

//synthesize properties
@synthesize EnterStatsButton, ViewStatsButton, managedObjectContext;

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

//release variables
- (void)dealloc {
    [EnterStatsButton release];
    [ViewStatsButton release];
    [super dealloc];
}

//EnterStats method.  initializes an instance of enterdatachartviewcontroller and passes the managed object context and modally presents it
- (IBAction)EnterStats:(id)sender {
    EnterDataChartViewController *enterDataChartVC = [[EnterDataChartViewController alloc] init];
    enterDataChartVC.managedObjectContext = self.managedObjectContext;
    [self presentModalViewController:enterDataChartVC animated:NO];
}

//ViewStats method.  initializes an instance of viewstatstableviewcontroller and passes the managed object context and modally presents it
- (IBAction)ViewStats:(id)sender {
    ViewStatsTableViewController *viewStatsTableVC = [[ViewStatsTableViewController alloc] init];
    viewStatsTableVC.managedObjectContext = self.managedObjectContext;
    viewStatsTableVC.title = @"Charts";
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewStatsTableVC];
    [self presentModalViewController:navigationController animated:NO];
}
@end
