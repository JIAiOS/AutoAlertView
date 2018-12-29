//
//  AppDelegate.h
//  AutoAlertView
//
//  Created by 贾倍 on 2018/12/29.
//  Copyright © 2018 贾倍. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

