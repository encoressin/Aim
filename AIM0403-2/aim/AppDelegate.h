//
//  AppDelegate.h
//  aim
//
//  Created by GOKulnath.K on 08/01/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginScreen.h"
@class ViewController;

@interface AppDelegate : UIResponder 
<UIApplicationDelegate>
{
      NSString *str_orientation;
    UIWindow *window;
    LoginScreen *viewController;
}

@property (strong, nonatomic)IBOutlet UIWindow *window;
@property(nonatomic,retain)UINavigationController *navcontroller;
@property (strong, nonatomic)IBOutlet LoginScreen *viewController;
@property(nonatomic,retain)    NSString *str_orientation;

@end
