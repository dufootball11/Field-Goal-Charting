//
//  ViewStatsTableViewController.h
//  FieldGoalCharting
//
//  Created by Fries on 11/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewStatsViewController.h"

@interface ViewStatsTableViewController : UITableViewController {
    NSMutableArray *chartArray; 
}

@property (nonatomic, retain) NSMutableArray *chartArray;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain) ViewStatsViewController *viewStatsVC;

@end
