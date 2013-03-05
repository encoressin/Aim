//
//  ViewController.h
//  aim
//
//  Created by Rakesh.E on 08/01/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConnectionClass.h"


@interface LoginScreen : UIViewController<UITextFieldDelegate>
{

    ConnectionClass *conn;
    IBOutlet UITextField *usernametext;
    IBOutlet UITextField *passwordtext;
    IBOutlet UIButton *loginButton;
    IBOutlet UILabel *lblClickhere;
    IBOutlet UILabel *lblClickLine;
    IBOutlet UILabel *lblEffective;
    IBOutlet UILabel *lblTheprovider ;
    IBOutlet UILabel *lblContactmobile;
    IBOutlet UILabel *lblAmericanimaging;
    IBOutlet UILabel *lblAimmessage;
    IBOutlet UILabel *lblMemlogin;
    IBOutlet UILabel *lblBuildversion;
    
    
    IBOutlet UIImageView *imgBg;
    IBOutlet UIImageView *imgInnerbg;
    IBOutlet UIImageView *imgFooter;
    IBOutlet UIImageView *imgAim;
    IBOutlet UIImageView *imgMobportal;
    IBOutlet UIImageView *imgMsgbox;
    IBOutlet UIImageView *imgTxtboxleft;
    IBOutlet UIImageView *imgTxtboxright;
    IBOutlet UIImageView *imgTxtboxleft2;
    IBOutlet UIImageView *imgTxtboxright2;
    IBOutlet UIScrollView *scrollbg;
    
    IBOutlet UIView *viewLandLogin;
    IBOutlet UIButton *btnLoginland;
   
    //common classes
   
}
@property(nonatomic,retain)IBOutlet UITextField *usernametext;
@property(nonatomic,retain)IBOutlet UITextField *passwordtext;
@property(nonatomic,retain)IBOutlet UIButton *loginButton;


@property(nonatomic,retain)IBOutlet UILabel *lblClickhere;
@property(nonatomic,retain)IBOutlet UILabel *lblClickLine;
@property(nonatomic,retain)IBOutlet UILabel *lblEffective;
@property(nonatomic,retain)IBOutlet UILabel *lblTheprovider ;
@property(nonatomic,retain)IBOutlet UILabel *lblContactmobile;
@property(nonatomic,retain)IBOutlet UILabel *lblAmericanimaging;
@property(nonatomic,retain)IBOutlet UILabel *lblAimmessage;
@property(nonatomic,retain)IBOutlet UILabel *lblMemlogin;
@property(nonatomic,retain) IBOutlet UILabel *lblBuildversion;
@property(nonatomic,retain) IBOutlet UIImageView *imgBg;
@property(nonatomic,retain) IBOutlet UIImageView *imgInnerbg;
@property(nonatomic,retain) IBOutlet UIImageView *imgFooter;
@property(nonatomic,retain) IBOutlet UIImageView *imgAim;
@property(nonatomic,retain) IBOutlet UIImageView *imgMobportal;
@property(nonatomic,retain) IBOutlet UIImageView *imgMsgbox;
@property(nonatomic,retain) IBOutlet UIImageView *imgTxtboxleft;
@property(nonatomic,retain) IBOutlet UIImageView *imgTxtboxright;
@property(nonatomic,retain)IBOutlet UIImageView *imgTxtboxleft2;
@property(nonatomic,retain)IBOutlet UIImageView *imgTxtboxright2;
@property(nonatomic,retain) IBOutlet UIView *viewLandLogin;
@property(nonatomic,retain) IBOutlet UIButton *btnLoginland;
@property(nonatomic,retain)IBOutlet UIScrollView *scrollbg;
- (IBAction) login:(id)sender;
-(void)resizeiphone_land;
-(void)resizeiphone_port;
-(void)resizeipad_land;
-(void)resizeipad_port;
- (BOOL)check;
- (void)resizeiphone5_land;
- (void)resizeiphone5_port;
@end

