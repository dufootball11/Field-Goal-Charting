//
//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: EnterData36_45ChartViewController.m

//  description: header file for the enterdata36_45chartviewcontroller class.  lets the user enter makes and misses for differing directions from 36 yards to 45 yards

#import <UIKit/UIKit.h>

@interface EnterData36_45ViewController : UIViewController {
    //18-20 yards
    IBOutlet UILabel *String36_40Left;
    IBOutlet UILabel *String36_40Right;
    IBOutlet UILabel *String36_40Middle;
    IBOutlet UILabel *String36_40LeftMiss;
    IBOutlet UILabel *String36_40RightMiss;
    IBOutlet UILabel *String36_40MiddleMiss;
    
    //41_45 yards
    IBOutlet UILabel *String41_45Left;
    IBOutlet UILabel *String41_45Right;
    IBOutlet UILabel *String41_45Middle;
    IBOutlet UILabel *String41_45LeftMiss;
    IBOutlet UILabel *String41_45RightMiss;
    IBOutlet UILabel *String41_45MiddleMiss;
}

//18-20 variables
- (IBAction)_40LeftMakeDecrease:(id)sender;
- (IBAction)_40MiddleMakeDecrease:(id)sender;
- (IBAction)_40RightMakeDecrease:(id)sender;
- (IBAction)_40LeftMakeIncrease:(id)sender;
- (IBAction)_40MiddleMakeIncrease:(id)sender;
- (IBAction)_40RightMakeIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String36_40Left;
@property (nonatomic, assign) int LeftMade36_40;
@property (nonatomic, assign) UILabel *String36_40Middle;
@property (nonatomic, assign) int MiddleMade36_40;
@property (nonatomic, assign) UILabel *String36_40Right;
@property (nonatomic, assign) int RightMade36_40;

- (IBAction)_40LeftMissDecrease:(id)sender;
- (IBAction)_40MiddleMissDecrease:(id)sender;
- (IBAction)_40RightMissDecrease:(id)sender;
- (IBAction)_40LeftMissIncrease:(id)sender;
- (IBAction)_40MiddleMissIncrease:(id)sender;
- (IBAction)_40RightMissIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String36_40LeftMiss;
@property (nonatomic, assign) int Left36_40Miss;
@property (nonatomic, assign) UILabel *String36_40MiddleMiss;
@property (nonatomic, assign) int Middle36_40Miss;
@property (nonatomic, assign) UILabel *String36_40RightMiss;
@property (nonatomic, assign) int Right36_40Miss;

//41_45 variables
- (IBAction)_45LeftMakeDecrease:(id)sender;
- (IBAction)_45MiddleMakeDecrease:(id)sender;
- (IBAction)_45RightMakeDecrease:(id)sender;
- (IBAction)_45LeftMakeIncrease:(id)sender;
- (IBAction)_45MiddleMakeIncrease:(id)sender;
- (IBAction)_45RightMakeIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String41_45Left;
@property (nonatomic, assign) int LeftMade41_45;
@property (nonatomic, assign) UILabel *String41_45Middle;
@property (nonatomic, assign) int MiddleMade41_45;
@property (nonatomic, assign) UILabel *String41_45Right;
@property (nonatomic, assign) int RightMade41_45;

- (IBAction)_45LeftMissDecrease:(id)sender;
- (IBAction)_45MiddleMissDecrease:(id)sender;
- (IBAction)_45RightMissDecrease:(id)sender;
- (IBAction)_45LeftMissIncrease:(id)sender;
- (IBAction)_45MiddleMissIncrease:(id)sender;
- (IBAction)_45RightMissIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String41_45LeftMiss;
@property (nonatomic, assign) int Left41_45Miss;
@property (nonatomic, assign) UILabel *String41_45MiddleMiss;
@property (nonatomic, assign) int Middle41_45Miss;
@property (nonatomic, assign) UILabel *String41_45RightMiss;
@property (nonatomic, assign) int Right41_45Miss;

@end
