//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: Chart.h

//  description: header file for the Chart class core data entity

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Chart : NSManagedObject {

}
//declare all the properties for the various attributes of the chart core data entity
@property (nonatomic, retain) NSDate * date;

@property (nonatomic, retain) NSNumber * left18_20Make;
@property (nonatomic, retain) NSNumber * left18_20Miss;
@property (nonatomic, retain) NSNumber * middle18_20Make;
@property (nonatomic, retain) NSNumber * middle18_20Miss;
@property (nonatomic, retain) NSNumber * right18_20Make;
@property (nonatomic, retain) NSNumber * right18_20Miss;

@property (nonatomic, retain) NSNumber * left21_25Make;
@property (nonatomic, retain) NSNumber * left21_25Miss;
@property (nonatomic, retain) NSNumber * middle21_25Make;
@property (nonatomic, retain) NSNumber * middle21_25Miss;
@property (nonatomic, retain) NSNumber * right21_25Make;
@property (nonatomic, retain) NSNumber * right21_25Miss;

@property (nonatomic, retain) NSNumber * left26_30Make;
@property (nonatomic, retain) NSNumber * left26_30Miss;
@property (nonatomic, retain) NSNumber * middle26_30Make;
@property (nonatomic, retain) NSNumber * middle26_30Miss;
@property (nonatomic, retain) NSNumber * right26_30Make;
@property (nonatomic, retain) NSNumber * right26_30Miss;

@property (nonatomic, retain) NSNumber * left31_35Make;
@property (nonatomic, retain) NSNumber * left31_35Miss;
@property (nonatomic, retain) NSNumber * middle31_35Make;
@property (nonatomic, retain) NSNumber * middle31_35Miss;
@property (nonatomic, retain) NSNumber * right31_35Make;
@property (nonatomic, retain) NSNumber * right31_35Miss;

@property (nonatomic, retain) NSNumber * left36_40Make;
@property (nonatomic, retain) NSNumber * left36_40Miss;
@property (nonatomic, retain) NSNumber * middle36_40Make;
@property (nonatomic, retain) NSNumber * middle36_40Miss;
@property (nonatomic, retain) NSNumber * right36_40Make;
@property (nonatomic, retain) NSNumber * right36_40Miss;

@property (nonatomic, retain) NSNumber * left41_45Make;
@property (nonatomic, retain) NSNumber * left41_45Miss;
@property (nonatomic, retain) NSNumber * middle41_45Make;
@property (nonatomic, retain) NSNumber * middle41_45Miss;
@property (nonatomic, retain) NSNumber * right41_45Make;
@property (nonatomic, retain) NSNumber * right41_45Miss;

@property (nonatomic, retain) NSNumber * left46_50Make;
@property (nonatomic, retain) NSNumber * left46_50Miss;
@property (nonatomic, retain) NSNumber * middle46_50Make;
@property (nonatomic, retain) NSNumber * middle46_50Miss;
@property (nonatomic, retain) NSNumber * right46_50Make;
@property (nonatomic, retain) NSNumber * right46_50Miss;

@property (nonatomic, retain) NSNumber * left51_55Make;
@property (nonatomic, retain) NSNumber * left51_55Miss;
@property (nonatomic, retain) NSNumber * middle51_55Make;
@property (nonatomic, retain) NSNumber * middle51_55Miss;
@property (nonatomic, retain) NSNumber * right51_55Make;
@property (nonatomic, retain) NSNumber * right51_55Miss;

@property (nonatomic, retain) NSNumber * left56PlusMake;
@property (nonatomic, retain) NSNumber * left56PlusMiss;
@property (nonatomic, retain) NSNumber * middle56PlusMake;
@property (nonatomic, retain) NSNumber * middle56PlusMiss;
@property (nonatomic, retain) NSNumber * right56PlusMake;
@property (nonatomic, retain) NSNumber * right56PlusMiss;

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * location;
@property (nonatomic, retain) NSString * weather;
@property (nonatomic, retain) NSString * wind;
@property (nonatomic, retain) NSString * notes;



@end
