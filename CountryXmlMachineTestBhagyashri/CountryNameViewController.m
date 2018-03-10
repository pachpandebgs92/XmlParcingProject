//
//  CountryNameViewController.m
//  CountryXmlMachineTestBhagyashri
//
//  Created by Bhagyashri Pachpande on 25/01/18.
//  Copyright © 2018 Digicaptions. All rights reserved.
//

#import "CountryNameViewController.h"

@interface CountryNameViewController ()

@end

@implementation CountryNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _lblCountryNames.text=[_dictCountryName valueForKey:@"Name"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
