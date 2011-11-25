//
//  Chart.h
//  FieldGoalCharting
//
//  Created by Fries on 11/25/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Chart : NSManagedObject {
@private
}
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSNumber * left18_20Make;
@property (nonatomic, retain) NSNumber * left18_20Miss;
@property (nonatomic, retain) NSNumber * middle18_20Make;
@property (nonatomic, retain) NSNumber * middle18_20Miss;
@property (nonatomic, retain) NSNumber * right18_20Make;
@property (nonatomic, retain) NSNumber * right18_20Miss;
@property (nonatomic, retain) NSString * title;

@end
