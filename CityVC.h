//
//  CityVC.h
//  Weather
//
//  Created by Sean Liu on 2017-11-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"
#import "DetailVC.h"

@interface CityVC : UIViewController
- (instancetype)initWithCity:(City*)city;
@end
