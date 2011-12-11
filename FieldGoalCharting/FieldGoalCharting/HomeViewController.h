//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: HomeViewController.h

//  description: The header file for the HomeViewController class.  Displays the home screen with buttons that allow the user to either enter data or view previous data.

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController {
    IBOutlet UIButton *EnterStatsButton;
    IBOutlet UIButton *ViewStatsButton;
}

//declare all properties
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain) IBOutlet UIButton *EnterStatsButton;
@property (nonatomic, retain) IBOutlet UIButton *ViewStatsButton;

//declare action methods
- (IBAction)EnterStats:(id)sender;
- (IBAction)ViewStats:(id)sender;


@end
