//
//  City.h
//  Weather
//
//  Created by Sean Liu on 2017-11-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface City : NSObject

@property UIImage* weather;
@property NSString* temp;
@property NSString* name;
- (instancetype)initWithWeather:(NSString*) weather Temp:(NSString*) temp andName: (NSString*) name;
@end
