//
//  EnterData18_25ChartViewController.h
//  FieldGoalCharting
//
//  Created by Fries on 11/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EnterData18_25ChartViewController : UIViewController {
    //18-20 yards
    IBOutlet UILabel *String18_20Left;
    IBOutlet UILabel *String18_20Right;
    IBOutlet UILabel *String18_20Middle;
    IBOutlet UILabel *String18_20LeftMiss;
    IBOutlet UILabel *String18_20RightMiss;
    IBOutlet UILabel *String18_20MiddleMiss;
    
    //21-25 yards
    IBOutlet UILabel *String21_25Left;
    IBOutlet UILabel *String21_25Right;
    IBOutlet UILabel *String21_25Middle;
    IBOutlet UILabel *String21_25LeftMiss;
    IBOutlet UILabel *String21_25RightMiss;
    IBOutlet UILabel *String21_25MiddleMiss;
}

//18-20 variables
- (IBAction)_20LeftMakeDecrease:(id)sender;
- (IBAction)_20MiddleMakeDecrease:(id)sender;
- (IBAction)_20RightMakeDecrease:(id)sender;
- (IBAction)_20LeftMakeIncrease:(id)sender;
- (IBAction)_20MiddleMakeIncrease:(id)sender;
- (IBAction)_20RightMakeIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String18_20Left;
@property (nonatomic, assign) int LeftMade18_20;
@property (nonatomic, assign) UILabel *String18_20Middle;
@property (nonatomic, assign) int MiddleMade18_20;
@property (nonatomic, assign) UILabel *String18_20Right;
@property (nonatomic, assign) int RightMade18_20;

- (IBAction)_20LeftMissDecrease:(id)sender;
- (IBAction)_20MiddleMissDecrease:(id)sender;
- (IBAction)_20RightMissDecrease:(id)sender;
- (IBAction)_20LeftMissIncrease:(id)sender;
- (IBAction)_20MiddleMissIncrease:(id)sender;
- (IBAction)_20RightMissIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String18_20LeftMiss;
@property (nonatomic, assign) int Left18_20Miss;
@property (nonatomic, assign) UILabel *String18_20MiddleMiss;
@property (nonatomic, assign) int Middle18_20Miss;
@property (nonatomic, assign) UILabel *String18_20RightMiss;
@property (nonatomic, assign) int Right18_20Miss;

//21-25 variables
- (IBAction)_25LeftMakeDecrease:(id)sender;
- (IBAction)_25MiddleMakeDecrease:(id)sender;
- (IBAction)_25RightMakeDecrease:(id)sender;
- (IBAction)_25LeftMakeIncrease:(id)sender;
- (IBAction)_25MiddleMakeIncrease:(id)sender;
- (IBAction)_25RightMakeIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String21_25Left;
@property (nonatomic, assign) int LeftMade21_25;
@property (nonatomic, assign) UILabel *String21_25Middle;
@property (nonatomic, assign) int MiddleMade21_25;
@property (nonatomic, assign) UILabel *String21_25Right;
@property (nonatomic, assign) int RightMade21_25;

- (IBAction)_25LeftMissDecrease:(id)sender;
- (IBAction)_25MiddleMissDecrease:(id)sender;
- (IBAction)_25RightMissDecrease:(id)sender;
- (IBAction)_25LeftMissIncrease:(id)sender;
- (IBAction)_25MiddleMissIncrease:(id)sender;
- (IBAction)_25RightMissIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String21_25LeftMiss;
@property (nonatomic, assign) int Left21_25Miss;
@property (nonatomic, assign) UILabel *String21_25MiddleMiss;
@property (nonatomic, assign) int Middle21_25Miss;
@property (nonatomic, assign) UILabel *String21_25RightMiss;
@property (nonatomic, assign) int Right21_25Miss;



@end
