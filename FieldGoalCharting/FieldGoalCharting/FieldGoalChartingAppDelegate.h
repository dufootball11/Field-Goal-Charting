//
//  FieldGoalChartingAppDelegate.h
//  FieldGoalCharting
//
//  Created by Fries on 11/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FieldGoalChartingViewController;

@interface FieldGoalChartingAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet FieldGoalChartingViewController *viewController;

@end
