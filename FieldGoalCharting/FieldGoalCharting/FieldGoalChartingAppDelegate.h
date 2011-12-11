//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: FieldGoalChartingAppDelegate.h

//  description: Field Goal Charting is an app designed for field goal kickers to have a way of charting their kicking sessions in a handy, portable format.  It gives the user a standard kicking chart to enter made and msised field goals from various distances and directions, as well as standard notes.  It saves the kicking session and presents the user with several different views of their performance, and stores the session for the user to be able to look up later.

#import <UIKit/UIKit.h>

@interface FieldGoalChartingAppDelegate : NSObject <UIApplicationDelegate>

//declare properties
@property (nonatomic, retain) IBOutlet UIWindow *window;

//core data properties and functions
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
