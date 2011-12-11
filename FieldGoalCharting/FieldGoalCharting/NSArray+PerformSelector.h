//
//  NSArray+PerformSelector.h
//  SegmentedControlExample
//
//  Created by Marcus Crafter on 24/05/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

//  Code take from Marcus Crafter to implement segments controller

#import <Foundation/Foundation.h>


@interface NSArray (PerformSelector)

- (NSArray *)arrayByPerformingSelector:(SEL)selector;

@end
