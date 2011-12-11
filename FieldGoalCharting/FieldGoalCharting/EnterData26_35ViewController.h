//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: EnterData26_35ViewController.m

//  description: header file for the enterdata26_35chartviewcontroller class.  lets the user enter makes and misses for differing directions from 26 yards to 35 yards

#import <UIKit/UIKit.h>

@interface EnterData26_35ViewController : UIViewController {
    //18-20 yards
    IBOutlet UILabel *String26_30Left;
    IBOutlet UILabel *String26_30Right;
    IBOutlet UILabel *String26_30Middle;
    IBOutlet UILabel *String26_30LeftMiss;
    IBOutlet UILabel *String26_30RightMiss;
    IBOutlet UILabel *String26_30MiddleMiss;
    
    //21-25 yards
    IBOutlet UILabel *String31_35Left;
    IBOutlet UILabel *String31_35Right;
    IBOutlet UILabel *String31_35Middle;
    IBOutlet UILabel *String31_35LeftMiss;
    IBOutlet UILabel *String31_35RightMiss;
    IBOutlet UILabel *String31_35MiddleMiss;
}

//18-20 variables
- (IBAction)_30LeftMakeDecrease:(id)sender;
- (IBAction)_30MiddleMakeDecrease:(id)sender;
- (IBAction)_30RightMakeDecrease:(id)sender;
- (IBAction)_30LeftMakeIncrease:(id)sender;
- (IBAction)_30MiddleMakeIncrease:(id)sender;
- (IBAction)_30RightMakeIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String26_30Left;
@property (nonatomic, assign) int LeftMade26_30;
@property (nonatomic, assign) UILabel *String26_30Middle;
@property (nonatomic, assign) int MiddleMade26_30;
@property (nonatomic, assign) UILabel *String26_30Right;
@property (nonatomic, assign) int RightMade26_30;

- (IBAction)_30LeftMissDecrease:(id)sender;
- (IBAction)_30MiddleMissDecrease:(id)sender;
- (IBAction)_30RightMissDecrease:(id)sender;
- (IBAction)_30LeftMissIncrease:(id)sender;
- (IBAction)_30MiddleMissIncrease:(id)sender;
- (IBAction)_30RightMissIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String26_30LeftMiss;
@property (nonatomic, assign) int Left26_30Miss;
@property (nonatomic, assign) UILabel *String26_30MiddleMiss;
@property (nonatomic, assign) int Middle26_30Miss;
@property (nonatomic, assign) UILabel *String26_30RightMiss;
@property (nonatomic, assign) int Right26_30Miss;

//21-25 variables
- (IBAction)_35LeftMakeDecrease:(id)sender;
- (IBAction)_35MiddleMakeDecrease:(id)sender;
- (IBAction)_35RightMakeDecrease:(id)sender;
- (IBAction)_35LeftMakeIncrease:(id)sender;
- (IBAction)_35MiddleMakeIncrease:(id)sender;
- (IBAction)_35RightMakeIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String31_35Left;
@property (nonatomic, assign) int LeftMade31_35;
@property (nonatomic, assign) UILabel *String31_35Middle;
@property (nonatomic, assign) int MiddleMade31_35;
@property (nonatomic, assign) UILabel *String31_35Right;
@property (nonatomic, assign) int RightMade31_35;

- (IBAction)_35LeftMissDecrease:(id)sender;
- (IBAction)_35MiddleMissDecrease:(id)sender;
- (IBAction)_35RightMissDecrease:(id)sender;
- (IBAction)_35LeftMissIncrease:(id)sender;
- (IBAction)_35MiddleMissIncrease:(id)sender;
- (IBAction)_35RightMissIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String31_35LeftMiss;
@property (nonatomic, assign) int Left31_35Miss;
@property (nonatomic, assign) UILabel *String31_35MiddleMiss;
@property (nonatomic, assign) int Middle31_35Miss;
@property (nonatomic, assign) UILabel *String31_35RightMiss;
@property (nonatomic, assign) int Right31_35Miss;

@end
