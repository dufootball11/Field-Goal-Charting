//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: notesViewStatsViewController.m

//  description: header file for the notes viewstatsviewcontroller class.  has various textfields for the user to enter data/notes about the workout

#import <UIKit/UIKit.h>

@interface notesViewStatsViewController : UIViewController {
    //declare outlets for the text fields
    IBOutlet UITextField *titleTextField;
    IBOutlet UITextField *locationTextField;
    IBOutlet UITextField *weatherTextField;
    IBOutlet UITextField *windTextField;
    IBOutlet UITextView *notesTextView;
}

//declare all properties
@property (nonatomic, retain) IBOutlet UITextField *titleTextField;
@property (nonatomic, retain) IBOutlet UITextField *locationTextField;
@property (nonatomic, retain) IBOutlet UITextField *weatherTextField;
@property (nonatomic, retain) IBOutlet UITextField *windTextField;
@property (nonatomic, retain) IBOutlet UITextView *notesTextView;

//string properties to be set by initializing view controller
@property (nonatomic, copy) NSString *titleTextFieldString;
@property (nonatomic, copy) NSString *locationTextFieldString;
@property (nonatomic, copy) NSString *weatherTextFieldString;
@property (nonatomic, copy) NSString *windTextFieldString;
@property (nonatomic, copy) NSString *notesTextViewString;

@end
