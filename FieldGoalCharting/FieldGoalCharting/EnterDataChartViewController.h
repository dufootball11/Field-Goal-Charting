//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: EnterDataChartViewController.m

//  description: header file for the enterdatachartviewcontroller class.  uses a segments controller to let the user switch between multiple views, with each view being a different distance segment or a notes view controller.  allows the user to save their workout or cancel

//import necessary libraries and header files
#import <UIKit/UIKit.h>

#import "EnterData18_25ChartViewController.h"
#import "EnterData26_35ViewController.h"
#import "EnterData36_45ViewController.h"
#import "EnterData46_55ViewController.h"
#import "EnterData56PlusViewController.h"
#import "EnterDataNotesViewController.h"
#import "ViewStatsViewController.h"

#import "Chart.h"

//declare segments controller class
@class SegmentsController;

@interface EnterDataChartViewController : UIViewController {

    SegmentsController *segmentsController;
    IBOutlet UIBarButtonItem *SaveButton;
    IBOutlet UIBarButtonItem *CancelButton;
    IBOutlet UISegmentedControl *DistanceSegmentedContol;
    IBOutlet UIView *CurrentDistanceChartView;
    BOOL viewDismissed;
     
    NSMutableArray *chartArray; 
}

//declare all properties
@property (nonatomic, retain) UIColor *greenViewColor;
 
@property (nonatomic, retain) NSMutableArray *chartArray;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;


@property (nonatomic, retain) SegmentsController     * segmentsController;
@property (nonatomic, retain) UISegmentedControl *DistanceSegmentedControl;
@property (nonatomic, retain) UIView *CurrentDistanceChartView;
@property (nonatomic, retain) UINavigationController * navigationController;

@property (nonatomic, retain) EnterData18_25ChartViewController *enterData18_25VC;
@property (nonatomic, retain) EnterData26_35ViewController *enterData26_35VC;
@property (nonatomic, retain) EnterData36_45ViewController *enterData36_45VC;
@property (nonatomic, retain) EnterData46_55ViewController *enterData46_55VC;
@property (nonatomic, retain) EnterData56PlusViewController *enterData56PlusVC;
@property (nonatomic, retain) EnterDataNotesViewController *enterDataNotesVC;

@property (nonatomic, retain) ViewStatsViewController *viewStatsVC;

//declare actions for outlet button presses
- (IBAction)Cancel:(id)sender;
- (IBAction)Save:(id)sender;

@end
