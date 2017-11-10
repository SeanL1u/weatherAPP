//
//  DetailVC.m
//  Weather
//
//  Created by Sean Liu on 2017-11-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DetailVC.h"

@interface DetailVC ()
@property UILabel* temp;
@end

@implementation DetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.temp = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    self.temp.text = self.city.temp;
    self.temp.textColor = [UIColor greenColor];
    self.temp.center = self.view.center;
    [self.view addSubview:self.temp];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (instancetype)initWithCity: (City*) city
{
    self = [super init];
    if (self) {
        self.city = city;
    }
    return self;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
