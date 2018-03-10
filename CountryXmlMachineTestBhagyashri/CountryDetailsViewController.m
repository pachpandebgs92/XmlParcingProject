//
//  CountryDetailsViewController.m
//  CountryXmlMachineTestBhagyashri
//
//  Created by Bhagyashri Pachpande on 25/01/18.
//  Copyright © 2018 Digicaptions. All rights reserved.
//

#import "CountryDetailsViewController.h"

@interface CountryDetailsViewController ()

@end

@implementation CountryDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title=@"CountryDetails";
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _arrayCountryDetails.count;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CountryCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"CountryCollectionViewCell" forIndexPath:indexPath];
   /* if (cell==nil) {
        cell=[[CountryCollectionViewCell alloc] init];
    }*/
    NSDictionary *dictCountryTemp=[_arrayCountryDetails objectAtIndex:indexPath.row];
    cell.lblCountryName.text=[dictCountryTemp valueForKey:@"Name"];
    cell.lblCountryCode.text=[dictCountryTemp valueForKey:@"CountryCode"];
    cell.lblCurrency.text=[dictCountryTemp valueForKey:@"Currency"];
    cell.lblCurrencyCode.text=[dictCountryTemp valueForKey:@"CurrencyCode"];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    CountryNameViewController *CNameVC=[self.storyboard instantiateViewControllerWithIdentifier:@"CountryNameViewController"];
    CNameVC.dictCountryName=[_arrayCountryDetails objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:CNameVC animated:YES];
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
