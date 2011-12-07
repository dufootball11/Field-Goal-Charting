//
//  HomeViewController.h
//  FieldGoalCharting
//
//  Created by Fries on 11/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController {
    IBOutlet UIButton *EnterStatsButton;
    IBOutlet UIButton *ViewStatsButton;
}

@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain) IBOutlet UIButton *EnterStatsButton;
@property (nonatomic, retain) IBOutlet UIButton *ViewStatsButton;

- (IBAction)EnterStats:(id)sender;
- (IBAction)ViewStats:(id)sender;


@end
