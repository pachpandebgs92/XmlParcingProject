//
//  ViewController.h
//  CountryXmlMachineTestBhagyashri
//
//  Created by Student P_07 on 18/01/18.
//  Copyright © 2018 Digicaptions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountryDetailsViewController.h"

@interface ViewController : UIViewController<NSXMLParserDelegate>
{
    NSMutableDictionary *dictOfCountryData;
   NSMutableArray *arrayOfCountryList;
    NSMutableString *strCountryData;
}
@property (weak, nonatomic) IBOutlet UITableView *TableCountryData;

@end

