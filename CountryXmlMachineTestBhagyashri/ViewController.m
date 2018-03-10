//
//  ViewController.m
//  CountryXmlMachineTestBhagyashri
//
//  Created by Student P_07 on 18/01/18.
//  Copyright © 2018 Digicaptions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self parseCountryXml];
    self.title=@"Country Details";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrayOfCountryList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    NSDictionary *dictCountryTemp=[arrayOfCountryList objectAtIndex:indexPath.row];
    /*NSString *strName=[dictCountryTemp valueForKey:@"Name"];
    NSString *strCountryCode=[dictCountryTemp valueForKey:@"CountryCode"];
    NSString *strCurrency=[dictCountryTemp valueForKey:@"Currency"];
    NSString *strCurrencyCode=[dictCountryTemp valueForKey:@"CurrencyCode"];
    NSString *strCountryInfo=[NSString stringWithFormat:@"%@-%@-%@-%@",strName,strCountryCode,strCurrency,strCurrencyCode];*/
    
    //----------optimised code for above lines-----------
    
    NSString *strCountryInfo=[NSString stringWithFormat:@"%@-%@-%@-%@",[dictCountryTemp valueForKey:@"Name"],[dictCountryTemp valueForKey:@"CountryCode"],[dictCountryTemp valueForKey:@"Currency"],[dictCountryTemp valueForKey:@"CurrencyCode"]];
    
    cell.textLabel.text=strCountryInfo;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    CountryDetailsViewController *DetailVC=[self.storyboard instantiateViewControllerWithIdentifier:@"CountryDetailsViewController"];
    DetailVC.arrayCountryDetails=[arrayOfCountryList copy];
    [self.navigationController pushViewController:DetailVC animated:YES];
}

#pragma mark "xml Parcing"

-(void)parseCountryXml{
    NSBundle *mainBundle=[NSBundle mainBundle];
    NSURL *url=[mainBundle URLForResource:@"CountryList" withExtension:@".xml"];
    NSXMLParser *xml=[[NSXMLParser alloc] initWithContentsOfURL:url];
    NSLog(@"%@",xml);
    xml.delegate=self;
    [xml parse];
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(nullable NSString *)namespaceURI qualifiedName:(nullable NSString *)qName attributes:(NSDictionary<NSString *, NSString *> *)attributeDict{
    
    if ([elementName isEqualToString:@"NewDataSet"]) {
        arrayOfCountryList=[[NSMutableArray alloc] init];
    }
    if ([elementName isEqualToString:@"Table"]){
        dictOfCountryData=[[NSMutableDictionary alloc] init];
    }else if ([elementName isEqualToString:@"Name"]){
            strCountryData=[[NSMutableString alloc] init];
    }else if ([elementName isEqualToString:@"CountryCode"]){
            strCountryData=[[NSMutableString alloc] init];
    }else if ([elementName isEqualToString:@"Currency"]){
            strCountryData=[[NSMutableString alloc] init];
    }else if ([elementName isEqualToString:@"CurrencyCode"]){
            strCountryData=[[NSMutableString alloc] init];
    }
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    [strCountryData appendString:string];
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(nullable NSString *)namespaceURI qualifiedName:(nullable NSString *)qName{
    if ([elementName isEqualToString:@"Table"])
    {
        [arrayOfCountryList addObject:dictOfCountryData];
    }else if ([elementName isEqualToString:@"Name"]){
        [dictOfCountryData setValue:strCountryData forKey:elementName];
    }else if ([elementName isEqualToString:@"CountryCode"]){
        [dictOfCountryData setValue:strCountryData forKey:elementName];
    }else if ([elementName isEqualToString:@"Currency"]){
        [dictOfCountryData setValue:strCountryData forKey:elementName];
    }else if ([elementName isEqualToString:@"CurrencyCode"]){
        [dictOfCountryData setValue:strCountryData forKey:elementName];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
