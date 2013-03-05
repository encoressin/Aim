//
//  LoginScreen.m
//  aim
//
//  Created by vignesh n on 08/01/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "LoginScreen.h"
#import "mainmenuViewController.h"
#import "disclaimer.h"
#import "orderInformation.h"
#import "orderstatusViewController.h"
#import "QuartzCore/QuartzCore.h"

@interface LoginScreen ()

@end

@implementation LoginScreen

@synthesize usernametext;
@synthesize passwordtext;
@synthesize loginButton;
@synthesize lblClickhere,lblClickLine,lblEffective,lblAimmessage,lblMemlogin,lblTheprovider,lblContactmobile,lblAmericanimaging,lblBuildversion;
@synthesize imgBg,imgAim,imgFooter,imgMsgbox,imgInnerbg,imgMobportal,imgTxtboxleft,imgTxtboxright,imgTxtboxleft2,imgTxtboxright2;
@synthesize viewLandLogin;
@synthesize btnLoginland,scrollbg;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
   self = [super initWithNibName:nibNameOrNil 
                          bundle:nibBundleOrNil];
   if (self) {
        // Custom initialization
        }
  return self;
}

-(void)pushcallsuccess:(NSData *)data:(NSInteger)rescode
{
    NSString *Str_response=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"%@",Str_response);
    
    
    NSError *e;
    
    NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData: data options: NSJSONReadingMutableContainers error: &e];
    NSDictionary *str=[JSON objectForKey:@"d"];

    for (NSString *value in str){
        
        NSLog(@"%@",[str objectForKey:@"Authenticated"]);
        NSLog(@"%@",[str objectForKey:@"Status"]);
        NSLog(@"%@",[str objectForKey:@"StatusMessage"]);
        NSLog(@"%@",[str objectForKey:@"Token"]);
        
        
        NSDictionary *strHealth=[JSON objectForKey:@"UserHealthPlans"];
        for(NSString *valueHeath in strHealth)
        {
            NSLog(@"%@",[strHealth objectForKey:@"HealthPlanId"]);
            NSLog(@"%@",[strHealth objectForKey:@"HealthPlanName"]);
        }
        
        
        NSLog(@"%@",[str objectForKey:@"__type"]);  
        NSLog(@"%@",[str objectForKey:@"disclaimer"]);
        



    }

    
    
}

-(void)pushcallfailed:(NSString *)str_Failure
{
    
}
- (BOOL)check {
    BOOL iphone5=UIDevice.currentDevice.userInterfaceIdiom == UIUserInterfaceIdiomPhone && UIScreen.mainScreen.bounds.size.height * UIScreen.mainScreen.scale >= 1136;
    return iphone5;
}
-(void)resizeiphone5_land{
    
    
    usernametext.frame = CGRectMake(39,85,225,27);
    imgTxtboxleft.frame=CGRectMake(19,85,20,27) ;
    imgTxtboxright.frame=CGRectMake(264,85,20,27);
    passwordtext.frame=CGRectMake(39,117,225,27);
    imgTxtboxleft2.frame=CGRectMake(19,117,20,27);
    imgTxtboxright2.frame=CGRectMake(264,117,20,27);
    scrollbg.frame=CGRectMake(126, 62,300,146);
    loginButton.frame=CGRectMake(145, 211, 265, 23);
    imgBg.frame=CGRectMake(0, -4, 568, 324);
    imgInnerbg.frame=CGRectMake(20, 8, 527, 230);
    imgFooter.frame=CGRectMake(20, 238, 527, 40);
    imgAim.frame=CGRectMake(75, 243, 75, 30);
    imgMobportal.frame=CGRectMake(365, 249, 121, 19);
    imgMsgbox.frame=CGRectMake(121, 53, 312, 91);
    lblAimmessage.frame=CGRectMake(335, 49, 85, 27);
    lblAmericanimaging.frame=CGRectMake(33, 281, 312, 21);
    lblClickhere.frame=CGRectMake(140,53, 72, 22);
    lblClickLine.frame=CGRectMake(140,54, 53, 24);
    lblContactmobile.frame=CGRectMake(33, 268, 192, 21);
    lblEffective.frame=CGRectMake(5,14, 294, 60);
    lblMemlogin.frame=CGRectMake(121, 28, 96, 27);

    
    [imgTxtboxleft setImage:
     [UIImage imageNamed:@"iphone5PortLoginimgtxtleft.png"]];
    
    [imgTxtboxright setImage:
     [UIImage imageNamed:@"iphone5PortLoginimgtxtright.png"]];
    
    [imgBg setImage:
     [UIImage imageNamed:@"iphone5LandCommenBackgrounf.png"]];
    
    [imgInnerbg setImage:
     [UIImage imageNamed:@"iphone5LandLoginMemberBg.png"]];
    
    [imgFooter setImage: [UIImage imageNamed:@"iphone5LandLoginFooter.png"]];
    
    [imgAim setImage: [UIImage imageNamed:@"iphone5PortCommonAimlogo.png"]];
    
    [imgMobportal setImage: [UIImage imageNamed:@"iphone5CommonMobilePortalLogo.png"]];
    
    [imgMsgbox setImage: [UIImage imageNamed:@"iphone5LandloginMsgBg.png"]];
    
    [imgTxtboxleft2 setImage:
     [UIImage imageNamed:@"iphone5PortLoginimgtxtleft.png"]];
    
    
    [imgTxtboxright2 setImage:
     [UIImage imageNamed:@"iphone5PortLoginimgtxtright.png"]];
    
    [loginButton            setBackgroundImage:
     [UIImage imageNamed:@"iphone5LandLoginBtn.png"] forState:UIControlStateNormal];
    
    
    [self.lblTheprovider setHidden:YES];

    
}
-(void)resizeiphone5_port{
    
    
    usernametext.frame=CGRectMake(20, 158, 221, 28);
    imgTxtboxleft.frame=CGRectMake(0, 158, 20, 28);
    imgTxtboxright.frame=CGRectMake(241,158, 20,28);
    passwordtext.frame=CGRectMake(20, 192, 221, 27);
    imgTxtboxleft2.frame=CGRectMake(0, 192, 20, 27);
    imgTxtboxright2.frame=CGRectMake(241, 192, 20, 27);
    scrollbg.frame=CGRectMake(34, 122, 264, 238);
    loginButton.frame=CGRectMake(32, 386, 260, 26);
    imgBg.frame=CGRectMake(0, -5, 320, 558);
    imgInnerbg.frame=CGRectMake(5, 40, 311, 387);
    imgFooter.frame=CGRectMake(5,427, 311, 58);
    imgAim.frame=CGRectMake(28, 433, 80, 32);
    imgMobportal.frame=CGRectMake(168, 438, 132, 21);
    imgMsgbox.frame=CGRectMake(28, 100, 264, 146);
    lblAimmessage.frame=CGRectMake(194, 103, 81, 19);
    lblAmericanimaging.frame=CGRectMake(14, 495, 189, 42);
    lblClickhere.frame=CGRectMake(90, 78, 55, 26);
    lblClickLine.frame=CGRectMake(89, 77, 77, 34);
    lblContactmobile.frame=CGRectMake(14, 474, 201, 29);
    lblEffective.frame=CGRectMake(14, 24, 248, 78);
    lblMemlogin.frame=CGRectMake(69, 81, 102, 19);
    
    [imgTxtboxleft setImage:
     [UIImage imageNamed:@"iphone5PortLoginimgtxtleft.png"]];
    
    [imgTxtboxright setImage:
     [UIImage imageNamed:@"iphone5PortLoginimgtxtright.png"]];
    
    [imgBg setImage:
     [UIImage imageNamed:@"iphone5Portcommonbackground.png"]];
    
    [imgInnerbg setImage:
     [UIImage imageNamed:@"iphone5PortLoginmemberBg.png"]];
    
    [imgFooter setImage: [UIImage imageNamed:@"iphone5PortLoginFooter.png"]];
    
    [imgAim setImage: [UIImage imageNamed:@"iphone5PortCommonAimlogo.png"]];
    
    [imgMobportal setImage: [UIImage imageNamed:@"iphone5CommonMobilePortalLogo.png"]];
    
    [imgMsgbox setImage: [UIImage imageNamed:@"iphone5PortLoginmessagebox.png"]];
    
    [imgTxtboxleft2 setImage:
     [UIImage imageNamed:@"iphone5PortLoginimgtxtleft.png"]];
    
    
    [imgTxtboxright2 setImage:
     [UIImage imageNamed:@"iphone5PortLoginimgtxtright.png"]];
    
    [loginButton            setBackgroundImage:
     [UIImage imageNamed:@"iphone5PortLoginButton.png"] forState:UIControlStateNormal];
    
    
    [self.lblTheprovider setHidden:YES];
    
}
-(void)resizeiphone_land
{
    usernametext.frame = CGRectMake(20,75,225,28);
    imgTxtboxleft.frame=CGRectMake(0,75,20,30) ;
    imgTxtboxright.frame=CGRectMake(245,75,20,30);
    passwordtext.frame=CGRectMake(20,112,225,28);
    imgTxtboxleft2.frame=CGRectMake(0,112,20,30);
    imgTxtboxright2.frame=CGRectMake(245,112,20,30);
    scrollbg.frame=CGRectMake(91, 57,271,151);
    loginButton.frame=CGRectMake(91, 210, 265, 23);
    imgBg.frame=CGRectMake(0, 0, 480, 320);
    imgInnerbg.frame=CGRectMake(60, 8, 340, 230);
    imgFooter.frame=CGRectMake(60, 238, 340, 40);
    imgAim.frame=CGRectMake(107, 244, 75, 30);
    imgMobportal.frame=CGRectMake(245, 249, 121, 19);
    imgMsgbox.frame=CGRectMake(74, 40, 312, 91);
    lblAimmessage.frame=CGRectMake(288, 35, 85, 27);
    lblAmericanimaging.frame=CGRectMake(74, 282, 312, 21);
    lblClickhere.frame=CGRectMake(83,54, 72, 22);
    lblClickLine.frame=CGRectMake(83,54, 53, 24);
    lblContactmobile.frame=CGRectMake(74, 270, 192, 21);
    lblEffective.frame=CGRectMake(6,0, 239, 74);
    lblMemlogin.frame=CGRectMake(121, 27, 96, 27);
    // lblBuildversion.frame=CGRectMake(310,267,62,16);      
    [imgTxtboxleft setImage:
     [UIImage imageNamed:@"iphoneLandCommontextboxleft.png"]];
    
    [imgTxtboxright setImage:
     [UIImage imageNamed:@"iphoneLandCommontextboxright.png"]];
    
    [imgBg setImage:
     [UIImage imageNamed:@"iphoneLandcommonbackground.png"]];
    
    [imgInnerbg setImage:
     [UIImage imageNamed:@"iphoneLandloginscreenmemberbg.png"]];
    
    [imgFooter setImage: [UIImage imageNamed:@"iphoneLandloginscreenfooterbg.png"]];
    
    [imgAim setImage: [UIImage imageNamed:@"iphoneLandloginscreenaimlogo.png"]];
    
    [imgMobportal setImage: [UIImage imageNamed:@"iphoneLandloginscreenmobileportallogo.png"]];
    
    [imgMsgbox setImage: [UIImage imageNamed:@"iphoneLandloginscreenmessagebg.png"]];
    
    [imgTxtboxleft2 setImage:
     [UIImage imageNamed:@"iphoneLandCommontextboxleft.png"]];
    
    
    [imgTxtboxright2 setImage:
     [UIImage imageNamed:@"iphoneLandCommontextboxright.png"]];
    
    [loginButton            setBackgroundImage:
     [UIImage imageNamed:@"iphoneLandloginscreenloginbutton.png"] forState:UIControlStateNormal];
    
    
    [self.lblTheprovider setHidden:YES];
    
    
}
-(void)resizeiphone_port
{
    usernametext.frame = CGRectMake(20,102,221,28);
    imgTxtboxleft.frame=CGRectMake(0,101,20,30) ;
    imgTxtboxright.frame=CGRectMake(240,101,20,30);
    passwordtext.frame=CGRectMake(20,139,221,28);
    imgTxtboxleft2.frame=CGRectMake(0,138,20,30);
    imgTxtboxright2.frame=CGRectMake(240,138,20,30);
    scrollbg.frame=CGRectMake(28,115,265,173);
    loginButton.frame=CGRectMake(28,296,260,26);
    imgBg.frame=CGRectMake(0, 0, 320,460);
    imgInnerbg.frame=CGRectMake(5,40,311,301);
    imgFooter.frame=CGRectMake(5,340,311,58);
    imgAim.frame=CGRectMake(28,353,80,32);
    imgMobportal.frame=CGRectMake(168,358,132,21);
    imgMsgbox.frame=CGRectMake(28,95,264,112);
    lblAimmessage.frame=CGRectMake(192,95,83,19);
    lblAmericanimaging.frame=CGRectMake(14,406,189,42);
    lblClickhere.frame=CGRectMake(88,52,55,26);
    lblClickLine.frame=CGRectMake(88,50,77,30);
    lblContactmobile.frame=CGRectMake(14,388,201,29);
    lblEffective.frame=CGRectMake(8,0,248,78);
    lblMemlogin.frame=CGRectMake(69,69,102,19);
    lblBuildversion.frame=CGRectMake(131,440,62,16);    
    [imgTxtboxleft setImage:
     [UIImage imageNamed:@"iphonePortcommontextboxleft.png"]];
    
    [imgTxtboxright setImage:
     [UIImage imageNamed:@"iphonePortcommontextboxright.png"]];
    
    [imgBg setImage:
     [UIImage imageNamed:@"iphonePortcommonbackground.png"]];
    
    [imgInnerbg setImage:
     [UIImage imageNamed:@"iphonePortloginscreenloginbg.png"]];
    
    [imgFooter setImage: [UIImage imageNamed:@"iphonePortloginscreenfooter.png"]];
    
    [imgAim setImage: [UIImage imageNamed:@"iphoneLandloginscreenaimlogo.png"]];
    
    [imgMobportal setImage: [UIImage imageNamed:@"iphoneLandloginscreenmobileportallogo.png"]];
    
    [imgMsgbox setImage: [UIImage imageNamed:@"iphonePortloginscreenmessagebox.png"]];
    
    [imgTxtboxleft2 setImage:
     [UIImage imageNamed:@"iphonePortcommontextboxleft.png"]];
    
    
    [imgTxtboxright2 setImage:
     [UIImage imageNamed:@"iphonePortcommontextboxright.png"]];
    
    [loginButton            setBackgroundImage:
     [UIImage imageNamed:@"iphonePortloginscreenloginbutton.png"] forState:UIControlStateNormal];
    
    
    [self.lblTheprovider setHidden:YES];
    
    
}
-(void)resizeipad_land
{
    usernametext.frame = CGRectMake(47,236,460,56);
    imgTxtboxleft.frame=CGRectMake(7,236,40,56);
    imgTxtboxright.frame=CGRectMake(507,236,40,56);
    passwordtext.frame=CGRectMake(47,300,460,56);
    imgTxtboxleft2.frame=CGRectMake(7,300,40,56);
    imgTxtboxright2.frame=CGRectMake(507,300,40,56);
    loginButton.frame=CGRectMake(242,527,542,52);
    imgBg.frame=CGRectMake(0,0,1024,768);
    imgInnerbg.frame=CGRectMake(140,63,744,530);
    imgFooter.frame=CGRectMake(140,590,744,89);
    imgAim.frame=CGRectMake(256,595,164,67);
    imgMobportal.frame=CGRectMake(549,607,266,44);
    imgMsgbox.frame=CGRectMake(8,0,547,228);
    lblAimmessage.frame=CGRectMake(375,8,159,33);
    lblAmericanimaging.frame=CGRectMake(163,694,244,41);
    lblClickhere.frame=CGRectMake(395,112,77,30);
    lblClickLine.frame=CGRectMake(397,112,91,30);
    lblContactmobile.frame=CGRectMake(163,676,239,25);
    lblEffective.frame=CGRectMake(26,-45,520,308);
    lblMemlogin.frame=CGRectMake(240,108,280,90);
    lblTheprovider.frame=CGRectMake(26,151,510,67);
    lblBuildversion.frame=CGRectMake(474, 730, 77, 21);
    
    
    scrollbg.frame=CGRectMake(234, 165, 581, 356);
    scrollbg.contentSize = CGSizeMake(581,500);
    
    
    [imgTxtboxleft setImage:
     [UIImage imageNamed:@"ipadportloginscreentextboxleft.png"]];
    
    [imgTxtboxright setImage:
     [UIImage imageNamed:@"ipadportloginscreentextboxright.png"]];
    
    [imgBg setImage:
     [UIImage imageNamed:@"ipadLandloginscreenbackgroundimg.png"]];
    
    [imgInnerbg setImage:
     [UIImage imageNamed:@"ipadLandloginscreenmember-login-bg.png"]];
    
    [imgFooter setImage: [UIImage imageNamed:@"ipadLandloginscreenfooter-bg.png"]];
    
    [imgAim setImage: [UIImage imageNamed:@"ipadLandloginscreenAIM-logo.png"]];
    
    [imgMobportal setImage: [UIImage imageNamed:@"ipadLandloginscreenmobile-portal-logo.png"]];
    
    [imgMsgbox setImage: [UIImage imageNamed:@"ipadLandloginscreenlogin-message-box.png"]];
    
    [imgTxtboxleft2 setImage:
     [UIImage imageNamed:@"ipadportloginscreentextboxleft.png"]];
    
    
    [imgTxtboxright2 setImage:
     [UIImage imageNamed:@"ipadportloginscreentextboxright.png"]];
    
    [loginButton            setBackgroundImage:
     [UIImage imageNamed:@"ipadLandloginscreenlogin-but.png"] forState:UIControlStateNormal];
    
    
    [self.lblTheprovider setHidden:NO];
}
-(void)resizeipad_port
{
    usernametext.frame = CGRectMake(154,492,460,56);
    imgTxtboxleft.frame=CGRectMake(114,492,40,56) ;
    imgTxtboxright.frame=CGRectMake(614,492,40,56);
    passwordtext.frame=CGRectMake(154,557,460,56);
    imgTxtboxleft2.frame=CGRectMake(114,557,40,56);
    imgTxtboxright2.frame=CGRectMake(614,557,40,56);
    loginButton.frame=CGRectMake(114,643,540,55);
    imgBg.frame=CGRectMake(0,0,768,1004);
    imgInnerbg.frame=CGRectMake(64,116,640,625);
    imgFooter.frame=CGRectMake(65,739,640,109);
    imgAim.frame=CGRectMake(171,755,164,67);
    imgMobportal.frame=CGRectMake(408,767,266,44);
    imgMsgbox.frame=CGRectMake(113,229,545,228);
    lblAimmessage.frame=CGRectMake(462,229,159,33);
    lblAmericanimaging.frame=CGRectMake(86,887,249,55);
    lblClickhere.frame=CGRectMake(507,331,77,30);
    lblClickLine.frame=CGRectMake(511,333,77,30);
    lblContactmobile.frame=CGRectMake(86,866,266,39);
    lblEffective.frame=CGRectMake(137,292,517,71);
    lblMemlogin.frame=CGRectMake(150,180,196,42);
    lblTheprovider.frame=CGRectMake(137,371,478,69);
    lblBuildversion.frame=CGRectMake(364, 987, 77, 21);
    
    scrollbg.frame=CGRectMake(0,18,660,620);
    scrollbg.contentSize = CGSizeMake(660,620);
    [imgTxtboxleft setImage:
     [UIImage imageNamed:@"ipadportloginscreentextboxleft.png"]];
    
    [imgTxtboxright setImage:
     [UIImage imageNamed:@"ipadportloginscreentextboxright.png"]];
    
    [imgBg setImage:
     [UIImage imageNamed:@"ipadportloginscreenbackgroundimg.png"]];
    
    [imgInnerbg setImage:
     [UIImage imageNamed:@"ipadPortloginscreenlogin-bg.png"]];
    
    [imgFooter setImage: [UIImage imageNamed:@"ipadLandloginscreenfooter-bg.png"]];
    
    [imgAim setImage: [UIImage imageNamed:@"ipadPortloginscreenAIM-logo.png"]];
    
    [imgMobportal setImage: [UIImage imageNamed:@"ipadPortloginscreenmobile-portal-logo.png"]];
    
    [imgMsgbox setImage: [UIImage imageNamed:@"ipadPortloginscreenmessage-box.png"]];
    
    [imgTxtboxleft2 setImage:
     [UIImage imageNamed:@"ipadportloginscreentextboxleft.png"]];
    
    
    [imgTxtboxright2 setImage:
     [UIImage imageNamed:@"ipadportloginscreentextboxright.png"]];
    
    [loginButton            setBackgroundImage:
     [UIImage imageNamed:@"ipadPortloginscreenlogin-but.png"] forState:UIControlStateNormal];
    
    
    
    [self.lblTheprovider setHidden:NO];
    
    
    
}


- (void)viewDidLoad
{
    conn=[[ConnectionClass alloc] init];
    conn.conn_Delegate=self;
    [super viewDidLoad];
    [self.view addSubview:viewLandLogin];
    [self.viewLandLogin setHidden:YES];
	// Do any additional setup after loading the view, typically from a nib
  
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        if ([self check]) {
            
            if(UIInterfaceOrientationIsLandscape
               (self.interfaceOrientation))
            {
                [self resizeiphone5_land];
                
            }
            else
            {
                [self resizeiphone5_port];
            }
        }
        
        else{
        if(UIInterfaceOrientationIsLandscape
           (self.interfaceOrientation))                
        {
            [self resizeiphone_land];
            
                       
        }
        else
        {
                        
            [self resizeiphone_port];
            
                   
            
        }
    }
    }
    else
    {
        if (UIInterfaceOrientationIsLandscape
            (self.interfaceOrientation)) 
        {
            
            [self resizeipad_land];
            
                         
            
                    
            
            
            
            
        }
        else
        {
            
            [self resizeipad_port];
                          
            
        }
    }    
}



- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        if ([self check]) {
            
            if( UIInterfaceOrientationIsPortrait(toInterfaceOrientation) ){
                
                
                [self resizeiphone5_port];
                
                
            }
            else
            {
                [self resizeiphone5_land];
                
            }
        }else{
            
            if( UIInterfaceOrientationIsPortrait(toInterfaceOrientation) ){
                
                
                [self resizeiphone_port];
                
                
            }
            else
            {
                [self resizeiphone_land];
                
            }
            
            
            
        }
        
        
        
        
        //        if( UIInterfaceOrientationIsPortrait(toInterfaceOrientation) )
        //        {
        //            // Adjust your text field...
        //            [self resizeiphone_port];
        //           // [self.lblMember setHidden:YES];
        //            //[self resizeMember_iphone];
        //
        //        } else if( UIInterfaceOrientationIsLandscape(toInterfaceOrientation) )
        //        {
        //            // Adjust your text field...
        //            [self resizeiphone_land];
        //
        //
        //        }
    }
    else
        
    {
        if( UIInterfaceOrientationIsPortrait(toInterfaceOrientation) ){
            // Adjust your text field...
            [self resizeipad_port];
            
            //[self.lblMember setHidden:YES];
            //[self resizeMember_ipad];
            
        } else if( UIInterfaceOrientationIsLandscape(toInterfaceOrientation) ){
            // Adjust your text field...
            [self resizeipad_land];
        } 
    }
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == usernametext) {
        [[self.view viewWithTag:textField.tag+1] becomeFirstResponder];
        return YES;
    }
    
    
    [textField resignFirstResponder];
    [scrollbg setContentOffset:CGPointMake(0, 0) animated:YES]; 
    return YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        if(UIInterfaceOrientationIsLandscape
           (self.interfaceOrientation))
        {
            if ([textField isEqual:usernametext])
            {
                [scrollbg setContentOffset:CGPointMake(0, 55) animated:YES];
            }
            if ([textField isEqual:passwordtext])
            {
                [scrollbg setContentOffset:CGPointMake(0, 70) animated:YES];
            }

        }
        else  //iphone port
        {
            if ([textField isEqual:usernametext])
            {
                [scrollbg setContentOffset:CGPointMake(0, 45) animated:YES];
            }
            if ([textField isEqual:passwordtext])
            {
                [scrollbg setContentOffset:CGPointMake(0, 60) animated:YES];
            }

        }
    }
    
    else //ipad
    {
        if(UIInterfaceOrientationIsLandscape
           (self.interfaceOrientation))
        {
            if ([textField isEqual:usernametext])
            {
                [scrollbg setContentOffset:CGPointMake(0, 110) animated:YES];
            }
            if ([textField isEqual:passwordtext])
            {
                [scrollbg setContentOffset:CGPointMake(0, 130) animated:YES];
            }
        }
    }
       
    return YES;
 }

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction) login:(id)sender
{   
    
  
    usernametext.text=[usernametext.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    passwordtext.text=[passwordtext.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    /*disclaimer *disc = [[disclaimer alloc]init];
                        
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        
        disc = [[[disclaimer alloc] initWithNibName:@"disclaimer_iphone" bundle:nil] autorelease];
        [[self navigationController] pushViewController:disc animated:YES];
    }
    
    else {
        disc = [[[disclaimer alloc] initWithNibName:@"disclaimer" bundle:nil] autorelease];
        [[self navigationController] pushViewController:disc animated:YES];
    }*/
    
    if([usernametext.text length]==0)
    {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please enter the User Name" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
        [alert release];
        return;
    }
    else if([passwordtext.text length]==0)
    {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please enter the Password" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
        [alert release];
        return;
    }   
    else 
    {   disclaimer *disc = [[disclaimer alloc]init];
        
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
            
            disc = [[[disclaimer alloc] initWithNibName:@"disclaimer_iphone" bundle:nil] autorelease];
            [[self navigationController] pushViewController:disc animated:YES];
        }
        
        else   //ipad
        {
            disc = [[[disclaimer alloc] initWithNibName:@"disclaimer" bundle:nil] autorelease];
            [[self navigationController] pushViewController:disc animated:YES];
        }
    }



}
/*- (IBAction) login:(id)sender
{
    
    NSString *str_auth=[NSString stringWithFormat:@"%@#%@",@"parimala",@"parimala"];
    NSLog(@"%@",str_auth);
    NSData *str_authd=[str_auth dataUsingEncoding:NSUTF8StringEncoding];
    [conn NSURLConnection_login:@"https://192.168.1.230:446/aim/Service.asmx/AuthenticateUser":str_authd];
    
}*/
- (void) dealloc{
    [usernametext release];
    [passwordtext release];
    [loginButton release];
    [lblClickhere release];
    [lblClickLine release];
    [lblAimmessage release];
    [lblAmericanimaging release];
    [lblContactmobile release];
    [lblEffective release];
    [lblMemlogin release];
    [lblTheprovider release];
    [imgBg release];
    [imgAim release];
    [imgFooter release];
    [imgInnerbg release];
    [imgMobportal release];
    [imgMsgbox release];
    [imgTxtboxleft release];
    [imgTxtboxleft2 release];
    [imgTxtboxright release];
    [imgTxtboxright2 release];
    [viewLandLogin release];
    [btnLoginland release];
    [scrollbg release];
    [super dealloc];
    
}

@end
