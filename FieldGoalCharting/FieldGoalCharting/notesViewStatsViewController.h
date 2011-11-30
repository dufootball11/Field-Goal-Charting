//
//  notesViewStatsViewController.h
//  FieldGoalCharting
//
//  Created by Fries on 11/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface notesViewStatsViewController : UIViewController {
    IBOutlet UITextField *titleTextField;
    IBOutlet UITextField *locationTextField;
    IBOutlet UITextField *weatherTextField;
    IBOutlet UITextField *windTextField;
    IBOutlet UITextView *notesTextView;
}

@property (nonatomic, retain) IBOutlet UITextField *titleTextField;
@property (nonatomic, retain) IBOutlet UITextField *locationTextField;
@property (nonatomic, retain) IBOutlet UITextField *weatherTextField;
@property (nonatomic, retain) IBOutlet UITextField *windTextField;
@property (nonatomic, retain) IBOutlet UITextView *notesTextView;

@property (nonatomic, copy) NSString *titleTextFieldString;
@property (nonatomic, copy) NSString *locationTextFieldString;
@property (nonatomic, copy) NSString *weatherTextFieldString;
@property (nonatomic, copy) NSString *windTextFieldString;
@property (nonatomic, copy) NSString *notesTextViewString;

@end
