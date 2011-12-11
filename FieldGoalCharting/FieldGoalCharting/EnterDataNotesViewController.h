//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: EnterDataNotesViewController.h

//  description: header file for the enterdatanotesviewcontroller class.  lets the user enter in notes to be saved about various kicking variables at the workout
#import <UIKit/UIKit.h>

@interface EnterDataNotesViewController : UIViewController<UITextFieldDelegate, UITextViewDelegate> {
    UITextField *titleStringTextField;
    UISegmentedControl *gameOrPracticeSegmentedControl;
    UITextField *locationTextField;
    UITextField *weatherTextField;
    UITextField *windTextField;
    UITextView *notesTextView;
}
 
//declare properties
@property (nonatomic, retain) IBOutlet UITextField *titleStringTextField;
@property (nonatomic, retain) IBOutlet UITextField *locationTextField;
@property (nonatomic, retain) IBOutlet UITextField *weatherTextField;
@property (nonatomic, retain) IBOutlet UITextField *windTextField;
@property (nonatomic, retain) IBOutlet UITextView *notesTextView;

@property (nonatomic, retain) IBOutlet UISegmentedControl *gameOrPracticeSegmentedControl;


@end
