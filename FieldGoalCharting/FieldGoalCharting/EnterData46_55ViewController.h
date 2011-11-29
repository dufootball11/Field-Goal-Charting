//
//  EnterData46_50ViewController.h
//  FieldGoalCharting
//
//  Created by Fries on 11/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EnterData46_55ViewController : UIViewController {
    //18-20 yards
    IBOutlet UILabel *String46_50Left;
    IBOutlet UILabel *String46_50Right;
    IBOutlet UILabel *String46_50Middle;
    IBOutlet UILabel *String46_50LeftMiss;
    IBOutlet UILabel *String46_50RightMiss;
    IBOutlet UILabel *String46_50MiddleMiss;
    
    //21-25 yards
    IBOutlet UILabel *String51_55Left;
    IBOutlet UILabel *String51_55Right;
    IBOutlet UILabel *String51_55Middle;
    IBOutlet UILabel *String51_55LeftMiss;
    IBOutlet UILabel *String51_55RightMiss;
    IBOutlet UILabel *String51_55MiddleMiss;
}

//18-20 variables
- (IBAction)_50LeftMakeDecrease:(id)sender;
- (IBAction)_50MiddleMakeDecrease:(id)sender;
- (IBAction)_50RightMakeDecrease:(id)sender;
- (IBAction)_50LeftMakeIncrease:(id)sender;
- (IBAction)_50MiddleMakeIncrease:(id)sender;
- (IBAction)_50RightMakeIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String46_50Left;
@property (nonatomic, assign) int LeftMade46_50;
@property (nonatomic, assign) UILabel *String46_50Middle;
@property (nonatomic, assign) int MiddleMade46_50;
@property (nonatomic, assign) UILabel *String46_50Right;
@property (nonatomic, assign) int RightMade46_50;

- (IBAction)_50LeftMissDecrease:(id)sender;
- (IBAction)_50MiddleMissDecrease:(id)sender;
- (IBAction)_50RightMissDecrease:(id)sender;
- (IBAction)_50LeftMissIncrease:(id)sender;
- (IBAction)_50MiddleMissIncrease:(id)sender;
- (IBAction)_50RightMissIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String46_50LeftMiss;
@property (nonatomic, assign) int Left46_50Miss;
@property (nonatomic, assign) UILabel *String46_50MiddleMiss;
@property (nonatomic, assign) int Middle46_50Miss;
@property (nonatomic, assign) UILabel *String46_50RightMiss;
@property (nonatomic, assign) int Right46_50Miss;

//21-25 variables
- (IBAction)_55LeftMakeDecrease:(id)sender;
- (IBAction)_55MiddleMakeDecrease:(id)sender;
- (IBAction)_55RightMakeDecrease:(id)sender;
- (IBAction)_55LeftMakeIncrease:(id)sender;
- (IBAction)_55MiddleMakeIncrease:(id)sender;
- (IBAction)_55RightMakeIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String51_55Left;
@property (nonatomic, assign) int LeftMade51_55;
@property (nonatomic, assign) UILabel *String51_55Middle;
@property (nonatomic, assign) int MiddleMade51_55;
@property (nonatomic, assign) UILabel *String51_55Right;
@property (nonatomic, assign) int RightMade51_55;

- (IBAction)_55LeftMissDecrease:(id)sender;
- (IBAction)_55MiddleMissDecrease:(id)sender;
- (IBAction)_55RightMissDecrease:(id)sender;
- (IBAction)_55LeftMissIncrease:(id)sender;
- (IBAction)_55MiddleMissIncrease:(id)sender;
- (IBAction)_55RightMissIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String51_55LeftMiss;
@property (nonatomic, assign) int Left51_55Miss;
@property (nonatomic, assign) UILabel *String51_55MiddleMiss;
@property (nonatomic, assign) int Middle51_55Miss;
@property (nonatomic, assign) UILabel *String51_55RightMiss;
@property (nonatomic, assign) int Right51_55Miss;

@end
