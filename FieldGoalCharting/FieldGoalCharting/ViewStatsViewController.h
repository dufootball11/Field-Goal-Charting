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
}

@property (nonatomic, retain) SegmentsController *segmentsController;
@property (nonatomic, retain) UISegmentedControl *viewSegmentedControl;
@property (nonatomic, retain) UINavigationController * navigationController;
@property (nonatomic, retain) UIView *currentStatView;

@property (nonatomic, retain) chartViewStatsViewController *chartViewStatsVC;
@property (nonatomic, retain) fieldViewStatsViewController *fieldViewStatsVC;
@property (nonatomic, retain) notesViewStatsViewController *notesViewStatsVC;

- (IBAction)doneWithViews:(id)sender;

@end
