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

@class SegmentsController;

@interface EnterDataChartViewController : UIViewController {

    SegmentsController *segmentsController;
    IBOutlet UIBarButtonItem *SaveButton;
    IBOutlet UIBarButtonItem *CancelButton;
    IBOutlet UISegmentedControl *DistanceSegmentedContol;
    IBOutlet UIView *CurrentDistanceChartView;
}

@property (nonatomic, retain) SegmentsController     * segmentsController;
@property (nonatomic, retain) UISegmentedControl *DistanceSegmentedControl;
@property (nonatomic, retain) UIView *CurrentDistanceChartView;
/*@property (nonatomic, retain) UIViewController *enterData18_25VC;
@property (nonatomic, retain) UIViewController *enterData26_35VC;
@property (nonatomic, retain) UIViewController *enterData36_45VC;
@property (nonatomic, retain) UIViewController *enterData46_55VC;
@property (nonatomic, retain) UIViewController *enterData56PlusVC;*/

- (IBAction)Cancel:(id)sender;
- (IBAction)Save:(id)sender;
//- (IBAction)ChangeDistanceSegment:(id)sender;

@end
