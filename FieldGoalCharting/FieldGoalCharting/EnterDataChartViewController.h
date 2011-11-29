//
//  EnterDataChartViewController.h
//  FieldGoalCharting
//
//  Created by Fries on 11/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "EnterData18_25ChartViewController.h"
#import "EnterData26_35ViewController.h"
#import "EnterData36_45ViewController.h"
#import "EnterData46_55ViewController.h"
#import "EnterData56PlusViewController.h"
#import "EnterDataNotesViewController.h"
#import "ViewStatsViewController.h"

#import "SetFieldViewDataDelegate.h"

#import "Chart.h"

@class SegmentsController;

@interface EnterDataChartViewController : UIViewController <SetFieldViewDataDelegate> {

    SegmentsController *segmentsController;
    IBOutlet UIBarButtonItem *SaveButton;
    IBOutlet UIBarButtonItem *CancelButton;
    IBOutlet UISegmentedControl *DistanceSegmentedContol;
    IBOutlet UIView *CurrentDistanceChartView;
    BOOL viewDismissed;
     
    NSMutableArray *chartArray; 
}

@property (nonatomic, retain) UIColor *greenViewColor;
 
@property (nonatomic, retain) NSMutableArray *chartArray;   

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

- (IBAction)Cancel:(id)sender;
- (IBAction)Save:(id)sender;

@end
