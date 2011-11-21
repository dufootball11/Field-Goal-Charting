//
//  EnterDataChartViewController.h
//  FieldGoalCharting
//
//  Created by Fries on 11/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EnterDataChartViewController : UIViewController {
    IBOutlet UIButton *CancelButton;
    IBOutlet UIButton *SaveButton;
}

@property (nonatomic, retain) IBOutlet UIButton *CancelButton;
@property (nonatomic, retain) IBOutlet UIButton *SaveButton;

- (IBAction)Cancel:(id)sender;
- (IBAction)Save:(id)sender;

@end
