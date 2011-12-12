//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: ViewStatsTableViewController.m

//  description: implementation of the viewstatstableviewcontroller class

//import necessary header files
#import "ViewStatsTableViewController.h"
#import "ViewStatsViewController.h"
#import "Chart.h"

@implementation ViewStatsTableViewController

//synthesize properties
@synthesize managedObjectContext, chartArray, viewStatsVC;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        self.navigationItem.title = @"Charts";
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
    
    //create a bar button that allows the user to return to the home screen    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Home" style:UIBarButtonItemStyleDone target:self action:@selector(done)]; 
    self.navigationItem.leftBarButtonItem = backButton;

    //create an fetch request for chart entities
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Chart" inManagedObjectContext:self.managedObjectContext];   
    NSFetchRequest *request = [[NSFetchRequest alloc] init];   
    [request setEntity:entity];  
    
    //sort the entities in desending order by their date attribute
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"date" ascending:NO];   
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];   
    [request setSortDescriptors:sortDescriptors];   
    [sortDescriptor release]; 
    
    // Fetch the records and handle an error  
    NSError *error;  
    NSMutableArray *mutableFetchResults = [[managedObjectContext executeFetchRequest:request error:&error] mutableCopy];   
    
    if (!mutableFetchResults) {  
        // Handle the error.  
        // This is a serious error and should advise the user to restart the application  
    }   
    
    // Save our fetched data to an array  
    [self setChartArray: mutableFetchResults];  
    [mutableFetchResults release];  
    [request release]; 
    
}
                                    
-(void) done {
    [self dismissModalViewControllerAnimated:NO];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [chartArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    static NSDateFormatter *dateFormatter = nil;   
    
    //format the dates as we want to see them in the cells
    if (dateFormatter == nil) {  
        dateFormatter = [[NSDateFormatter alloc] init];  
        [dateFormatter setDateFormat:@"MMMM dd, yyyy hh:mm a"];  
    } 
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    //fill the rows with the chart objects and set the text to the date
    Chart *chart = [chartArray objectAtIndex: [indexPath row]];
    [cell.textLabel setText: [dateFormatter stringFromDate: [chart date]]];
    
    return cell;   
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

//if the user selects a row, create a chart object from the chart that was selected and set all the new view controller's properties to those of the selected chart
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Chart *chart = [chartArray objectAtIndex: [indexPath row]];
    viewStatsVC = [[ViewStatsViewController alloc] init];
    viewStatsVC.fromViewStatsVC = YES;
    
    viewStatsVC._20LeftMake = [chart.left18_20Make doubleValue];
    viewStatsVC._20LeftMiss = [chart.left18_20Miss doubleValue];
    viewStatsVC._20MiddleMake = [chart.middle18_20Make doubleValue];
    viewStatsVC._20MiddleMiss = [chart.middle18_20Miss doubleValue];
    viewStatsVC._20RightMake = [chart.right18_20Make doubleValue];
    viewStatsVC._20RightMiss = [chart.right18_20Miss doubleValue];
    
    viewStatsVC._25LeftMake = [chart.left21_25Make doubleValue];
    viewStatsVC._25LeftMiss = [chart.left21_25Miss doubleValue];
    viewStatsVC._25MiddleMake = [chart.middle21_25Make doubleValue];
    viewStatsVC._25MiddleMiss = [chart.middle21_25Miss doubleValue];
    viewStatsVC._25RightMake = [chart.right21_25Make doubleValue];
    viewStatsVC._25RightMiss = [chart.right21_25Miss doubleValue];
    
    viewStatsVC._30LeftMake = [chart.left26_30Make doubleValue];
    viewStatsVC._30LeftMiss = [chart.left26_30Miss doubleValue];
    viewStatsVC._30MiddleMake = [chart.middle26_30Make doubleValue];
    viewStatsVC._30MiddleMiss = [chart.middle26_30Miss doubleValue];
    viewStatsVC._30RightMake = [chart.right26_30Make doubleValue];
    viewStatsVC._30RightMiss = [chart.right26_30Miss doubleValue];
    
    viewStatsVC._35LeftMake = [chart.left31_35Make doubleValue];
    viewStatsVC._35LeftMiss = [chart.left31_35Miss doubleValue];
    viewStatsVC._35MiddleMake = [chart.middle31_35Make doubleValue];
    viewStatsVC._35MiddleMiss = [chart.middle31_35Miss doubleValue];
    viewStatsVC._35RightMake = [chart.right31_35Make doubleValue];
    viewStatsVC._35RightMiss = [chart.right31_35Miss doubleValue];
    
    viewStatsVC._40LeftMake = [chart.left36_40Make doubleValue];
    viewStatsVC._40LeftMiss = [chart.left36_40Miss doubleValue];
    viewStatsVC._40MiddleMake = [chart.middle36_40Make doubleValue];
    viewStatsVC._40MiddleMiss = [chart.middle36_40Miss doubleValue];
    viewStatsVC._40RightMake = [chart.right36_40Make doubleValue];
    viewStatsVC._40RightMiss = [chart.right36_40Miss doubleValue];
    
    viewStatsVC._45LeftMake = [chart.left41_45Make doubleValue];
    viewStatsVC._45LeftMiss = [chart.left41_45Miss doubleValue];
    viewStatsVC._45MiddleMake = [chart.middle41_45Make doubleValue];
    viewStatsVC._45MiddleMiss = [chart.middle41_45Miss doubleValue];
    viewStatsVC._45RightMake = [chart.right41_45Make doubleValue];
    viewStatsVC._45RightMiss = [chart.right41_45Miss doubleValue];
    
    viewStatsVC._50LeftMake = [chart.left46_50Make doubleValue];
    viewStatsVC._50LeftMiss = [chart.left46_50Miss doubleValue];
    viewStatsVC._50MiddleMake = [chart.middle46_50Make doubleValue];
    viewStatsVC._50MiddleMiss = [chart.middle46_50Miss doubleValue];
    viewStatsVC._50RightMake = [chart.right46_50Make doubleValue];
    viewStatsVC._50RightMiss = [chart.right46_50Miss doubleValue];
    
    viewStatsVC._55LeftMake = [chart.left51_55Make doubleValue];
    viewStatsVC._55LeftMiss = [chart.left51_55Miss doubleValue];
    viewStatsVC._55MiddleMake = [chart.middle51_55Make doubleValue];
    viewStatsVC._55MiddleMiss = [chart.middle51_55Miss doubleValue];
    viewStatsVC._55RightMake = [chart.right51_55Make doubleValue];
    viewStatsVC._55RightMiss = [chart.right51_55Miss doubleValue];
    
    viewStatsVC._56LeftMake = [chart.left56PlusMake doubleValue];
    viewStatsVC._56LeftMiss = [chart.left56PlusMiss doubleValue];
    viewStatsVC._56MiddleMake = [chart.middle56PlusMake doubleValue];
    viewStatsVC._56MiddleMiss = [chart.middle56PlusMiss doubleValue];
    viewStatsVC._56RightMake = [chart.right56PlusMake doubleValue];
    viewStatsVC._56RightMiss = [chart.right56PlusMiss doubleValue];
    
    viewStatsVC.titleString = chart.title;
    viewStatsVC.locationString = chart.location;
    viewStatsVC.weatherString = chart.weather;
    viewStatsVC.windString = chart.wind;
    viewStatsVC.notesString = chart.notes;
    
    //present the view controller modally
    [self presentModalViewController:viewStatsVC animated:YES];

}

-(void) dealloc {
    [managedObjectContext release];
    [chartArray release];
    [super dealloc];
}

@end
