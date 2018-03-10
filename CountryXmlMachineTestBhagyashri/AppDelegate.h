//
//  AppDelegate.h
//  CountryXmlMachineTestBhagyashri
//
//  Created by Student P_07 on 18/01/18.
//  Copyright © 2018 Digicaptions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

