//
//  CountryCollectionViewCell.h
//  CountryXmlMachineTestBhagyashri
//
//  Created by Bhagyashri Pachpande on 25/01/18.
//  Copyright © 2018 Digicaptions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountryCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblCountryName;
@property (weak, nonatomic) IBOutlet UILabel *lblCountryCode;
@property (weak, nonatomic) IBOutlet UILabel *lblCurrency;
@property (weak, nonatomic) IBOutlet UILabel *lblCurrencyCode;

@end
