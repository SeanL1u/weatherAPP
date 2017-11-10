//
//  CityVC.m
//  Weather
//
//  Created by Sean Liu on 2017-11-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CityVC.h"

@interface CityVC ()
@property UILabel* temp;
@property UIImageView* weather;
@property UIButton* detailButton;
@property City* city;
@end

@implementation CityVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.temp = [[UILabel alloc]initWithFrame:(CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>))];
//    self.temp.text = self.city.temp;
    
    self.weather = [[UIImageView alloc]initWithFrame:(CGRectMake(0, 0, 100, 100))];
    self.weather.image = self.city.weather;
    self.weather.center = self.view.center;
    
    self.detailButton = [[UIButton alloc]initWithFrame:(CGRectMake(0, 0, 100, 200))];
    [self.detailButton setTitle:@"Detail" forState:UIControlStateNormal];
    [self.detailButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    self.detailButton.center = CGPointMake(self.view.center.x, self.view.center.y + 150);
    [self.detailButton addTarget:self action:@selector(detailView) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.weather];
    [self.view addSubview:self.detailButton];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (instancetype)initWithCity:(City*)city{
    self = [super init];
    if (self) {
        self.city = city;
    }return self;}
-(void)detailView{
    [self.navigationController pushViewController:[[DetailVC alloc]initWithCity:self.city] animated:YES];
    
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
