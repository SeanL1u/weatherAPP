//
//  City.m
//  Weather
//
//  Created by Sean Liu on 2017-11-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City
- (instancetype)initWithWeather:(NSString*) weather Temp:(NSString*) temp andName: (NSString*) name
{
    self = [super init];
    if (self) {
        self.weather = [UIImage imageNamed:weather];
        self.temp = temp;
        self.name = name;
    }
    return self;
}
@end
