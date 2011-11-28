//
//  EnterDataNotesViewController.h
//  FieldGoalCharting
//
//  Created by Fries on 11/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EnterDataNotesViewController : UIViewController<UITextFieldDelegate, UITextViewDelegate> {
    UITextField *titleStringTextField;
    UISegmentedControl *gameOrPracticeSegmentedControl;
    UITextField *locationTextField;
    UITextField *weatherTextField;
    UITextField *windTextField;
    UITextView *notesTextView;
}
 
@property (nonatomic, retain) IBOutlet UITextField *titleStringTextField;
@property (nonatomic, retain) IBOutlet UITextField *locationTextField;
@property (nonatomic, retain) IBOutlet UITextField *weatherTextField;
@property (nonatomic, retain) IBOutlet UITextField *windTextField;
@property (nonatomic, retain) IBOutlet UITextView *notesTextView;

@property (nonatomic, retain) IBOutlet UISegmentedControl *gameOrPracticeSegmentedControl;


@end
