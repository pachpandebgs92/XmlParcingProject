//
//  CountryDetailsViewController.h
//  CountryXmlMachineTestBhagyashri
//
//  Created by Bhagyashri Pachpande on 25/01/18.
//  Copyright © 2018 Digicaptions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountryCollectionViewCell.h"
#import "CountryNameViewController.h"

@interface CountryDetailsViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *CountryCollectionView;


@property (strong,nonatomic) NSArray *arrayCountryDetails;

@end
