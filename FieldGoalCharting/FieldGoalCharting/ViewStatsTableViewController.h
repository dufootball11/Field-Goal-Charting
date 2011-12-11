//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: ViewStatsTableViewController.m

//  description: header file for the viewstatstableviewcontroller class.  implements a table view that loads all previous workouts from core data in descending order of date/time and then allows the user to select and view them

#import <UIKit/UIKit.h>
#import "ViewStatsViewController.h"

@interface ViewStatsTableViewController : UITableViewController {
    NSMutableArray *chartArray; 
}

//declare all properties
@property (nonatomic, retain) NSMutableArray *chartArray;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain) ViewStatsViewController *viewStatsVC;

@end
