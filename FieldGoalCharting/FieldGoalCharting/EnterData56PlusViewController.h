//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: EnterData56PlusViewController.m

//  description: header file for the enterdata56Plusviewcontroller class.  lets the user enter makes and misses for differing directions from 56 yards and up

#import <UIKit/UIKit.h>

@interface EnterData56PlusViewController : UIViewController {
    //18-20 yards
    IBOutlet UILabel *String_56PlusLeft;
    IBOutlet UILabel *String_56PlusRight;
    IBOutlet UILabel *String_56PlusMiddle;
    IBOutlet UILabel *String_56PlusLeftMiss;
    IBOutlet UILabel *String_56PlusRightMiss;
    IBOutlet UILabel *String_56PlusMiddleMiss;
    
}

//18-20 variables
- (IBAction)_56LeftMakeDecrease:(id)sender;
- (IBAction)_56MiddleMakeDecrease:(id)sender;
- (IBAction)_56RightMakeDecrease:(id)sender;
- (IBAction)_56LeftMakeIncrease:(id)sender;
- (IBAction)_56MiddleMakeIncrease:(id)sender;
- (IBAction)_56RightMakeIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String_56PlusLeft;
@property (nonatomic, assign) int LeftMade_56Plus;
@property (nonatomic, assign) UILabel *String_56PlusMiddle;
@property (nonatomic, assign) int MiddleMade_56Plus;
@property (nonatomic, assign) UILabel *String_56PlusRight;
@property (nonatomic, assign) int RightMade_56Plus;

- (IBAction)_56LeftMissDecrease:(id)sender;
- (IBAction)_56MiddleMissDecrease:(id)sender;
- (IBAction)_56RightMissDecrease:(id)sender;
- (IBAction)_56LeftMissIncrease:(id)sender;
- (IBAction)_56MiddleMissIncrease:(id)sender;
- (IBAction)_56RightMissIncrease:(id)sender;

@property (nonatomic, assign) UILabel *String_56PlusLeftMiss;
@property (nonatomic, assign) int Left_56PlusMiss;
@property (nonatomic, assign) UILabel *String_56PlusMiddleMiss;
@property (nonatomic, assign) int Middle_56PlusMiss;
@property (nonatomic, assign) UILabel *String_56PlusRightMiss;
@property (nonatomic, assign) int Right_56PlusMiss;


@end
