//
//  ViewStatsViewController.h
//  FieldGoalCharting
//
//  Created by Fries on 11/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "chartViewStatsViewController.h"
#import "fieldViewStatsViewController.h"
#import "notesViewStatsViewController.h"

@class SegmentsController;

@interface ViewStatsViewController : UIViewController {
    SegmentsController *segmentsController;
    IBOutlet UISegmentedControl *viewSegmentedControl;
    IBOutlet UIView *currentStatView;
    double _20LeftMiss;
    double _20LeftMake;
}

@property (nonatomic, retain) UIColor *greenViewColor;
@property (nonatomic, copy) NSString *titleString;
@property (nonatomic, copy) NSString *weatherString;
@property (nonatomic, copy) NSString *windString;
@property (nonatomic, copy) NSString *locationString;
@property (nonatomic, copy) NSString *notesString;

@property (nonatomic, retain) SegmentsController *segmentsController;
@property (nonatomic, retain) UISegmentedControl *viewSegmentedControl;
@property (nonatomic, retain) UINavigationController * navigationController;
@property (nonatomic, retain) UIView *currentStatView;

@property (nonatomic, retain) chartViewStatsViewController *chartViewStatsVC;
@property (nonatomic, retain) fieldViewStatsViewController *fieldViewStatsVC;
@property (nonatomic, retain) notesViewStatsViewController *notesViewStatsVC;

@property (nonatomic, assign) double _20LeftMiss;
@property (nonatomic, assign) double _20LeftMake;
@property (nonatomic, assign) double _20MiddleMiss;
@property (nonatomic, assign) double _20MiddleMake;
@property (nonatomic, assign) double _20RightMiss;
@property (nonatomic, assign) double _20RightMake;
@property (nonatomic, assign) double _25LeftMiss;
@property (nonatomic, assign) double _25LeftMake;
@property (nonatomic, assign) double _25MiddleMiss;
@property (nonatomic, assign) double _25MiddleMake;
@property (nonatomic, assign) double _25RightMiss;
@property (nonatomic, assign) double _25RightMake;
@property (nonatomic, assign) double _30LeftMiss;
@property (nonatomic, assign) double _30LeftMake;
@property (nonatomic, assign) double _30MiddleMiss;
@property (nonatomic, assign) double _30MiddleMake;
@property (nonatomic, assign) double _30RightMiss;
@property (nonatomic, assign) double _30RightMake;
@property (nonatomic, assign) double _35LeftMiss;
@property (nonatomic, assign) double _35LeftMake;
@property (nonatomic, assign) double _35MiddleMiss;
@property (nonatomic, assign) double _35MiddleMake;
@property (nonatomic, assign) double _35RightMiss;
@property (nonatomic, assign) double _35RightMake;
@property (nonatomic, assign) double _40LeftMiss;
@property (nonatomic, assign) double _40LeftMake;
@property (nonatomic, assign) double _40MiddleMiss;
@property (nonatomic, assign) double _40MiddleMake;
@property (nonatomic, assign) double _40RightMiss;
@property (nonatomic, assign) double _40RightMake;
@property (nonatomic, assign) double _45LeftMiss;
@property (nonatomic, assign) double _45LeftMake;
@property (nonatomic, assign) double _45MiddleMiss;
@property (nonatomic, assign) double _45MiddleMake;
@property (nonatomic, assign) double _45RightMiss;
@property (nonatomic, assign) double _45RightMake;
@property (nonatomic, assign) double _50LeftMiss;
@property (nonatomic, assign) double _50LeftMake;
@property (nonatomic, assign) double _50MiddleMiss;
@property (nonatomic, assign) double _50MiddleMake;
@property (nonatomic, assign) double _50RightMiss;
@property (nonatomic, assign) double _50RightMake;
@property (nonatomic, assign) double _55LeftMiss;
@property (nonatomic, assign) double _55LeftMake;
@property (nonatomic, assign) double _55MiddleMiss;
@property (nonatomic, assign) double _55MiddleMake;
@property (nonatomic, assign) double _55RightMiss;
@property (nonatomic, assign) double _55RightMake;
@property (nonatomic, assign) double _56LeftMiss;
@property (nonatomic, assign) double _56LeftMake;
@property (nonatomic, assign) double _56MiddleMiss;
@property (nonatomic, assign) double _56MiddleMake;
@property (nonatomic, assign) double _56RightMiss;
@property (nonatomic, assign) double _56RightMake;

- (IBAction)doneWithViews:(id)sender;

@end
