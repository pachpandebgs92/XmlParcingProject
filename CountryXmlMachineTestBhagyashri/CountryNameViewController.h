//
//  CountryNameViewController.h
//  CountryXmlMachineTestBhagyashri
//
//  Created by Bhagyashri Pachpande on 25/01/18.
//  Copyright © 2018 Digicaptions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountryNameViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblCountryNames;
@property (strong,nonatomic) NSDictionary *dictCountryName;
@end
