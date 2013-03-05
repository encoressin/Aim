//
//  mainmenuViewController.m
//  aim
//
//  Created by GOKulnath.k on 10/01/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "mainmenuViewController.h"

#import "orderstatusViewController.h"
#import "LoginScreen.h"
#import "disclaimer.h"
@interface mainmenuViewController ()

@end

@implementation 
 mainmenuViewController
@synthesize imgAimLogo,imgBg,imgFooter,imgHeader,imgMainmenuBg,imgMobilePortal;
@synthesize lblAccessOptinet,lblAccessReport,lblCheckStatus,lblHome,lblManage,lblManagePhyisicianList,lblReferenceDesk,lblStartYourOrder;
@synthesize btnAccessReport,btnCheckOrderStatus,btnLogout,btnManagePhysicianList,btnManageProfile,btnOptinetRegistration,btnOrderReq,btnReferenceDesk;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) 
    {
        // Custom initialization
    }
    return self;
}
- (BOOL)check {
    BOOL iphone5=UIDevice.currentDevice.userInterfaceIdiom == UIUserInterfaceIdiomPhone && UIScreen.mainScreen.bounds.size.height * UIScreen.mainScreen.scale >= 1136;
    return iphone5;
}

-(void)resizeiphone5_port{
    
    imgHeader.frame=CGRectMake(0,-4,320,43);
    lblHome.frame=CGRectMake(127,7,67,29);
    btnLogout.frame=CGRectMake(275,1,39,37);
    imgBg.frame=CGRectMake(0,0,320,568);
    imgMainmenuBg.frame=CGRectMake(6,55,305,452);
    btnOrderReq.frame=CGRectMake(31,86,94,90);
    lblStartYourOrder.frame=CGRectMake(38,177,95,42);
    btnCheckOrderStatus.frame=CGRectMake(195,90,94,90);
    lblCheckStatus.frame=CGRectMake(190,171,110,33);
    btnAccessReport.frame=CGRectMake(31,250,94,90);
    lblAccessReport.frame=CGRectMake(33,342,105,22);
    btnOptinetRegistration.frame=CGRectMake(195,250,94,90);
    lblAccessOptinet.frame=CGRectMake(184,342,112,34);
    btnManagePhysicianList.frame=CGRectMake(38,415,53,50);
    lblManagePhyisicianList.frame=CGRectMake(26,465,79,37);
    btnManageProfile.frame=CGRectMake(139,415,53,50);
    lblManage.frame=CGRectMake(109,468,108,21);
    btnReferenceDesk.frame=CGRectMake(234,415,53,50);
    lblReferenceDesk.frame=CGRectMake(234,461,60,40);
    imgAimLogo.frame=CGRectMake(19,510,81,33);
    imgMobilePortal.frame=CGRectMake(168,515,132,22);
    imgFooter.frame=CGRectMake(6,507,305,44);
    
    
    [btnLogout setBackgroundImage:
     [UIImage imageNamed:@"iphone5PortCommonSignoutIcon.png"] forState:UIControlStateNormal];
    
    [btnOrderReq setBackgroundImage:
     [UIImage imageNamed:@"iphone5PortOrderRequestIcon.png"] forState:UIControlStateNormal];
    
    [btnCheckOrderStatus setBackgroundImage:
     [UIImage imageNamed:@"iphone5PortOrderStatusIcon.png"] forState:UIControlStateNormal];
    
    
    [btnAccessReport setBackgroundImage:
     [UIImage imageNamed:@"iphone5PortaccessReportIcon.png"] forState:UIControlStateNormal];
    
    
    
    
    [btnOptinetRegistration setBackgroundImage:
     [UIImage imageNamed:@"iphone5PortOptinetRegistrationIcon .png"] forState:UIControlStateNormal];
    
    [btnManagePhysicianList setBackgroundImage:
     [UIImage imageNamed:@"Iphone5PortManagePhysicianIcon.png"] forState:UIControlStateNormal];
    
    
    
    [btnManageProfile setBackgroundImage:
     [UIImage imageNamed:@"iphone5PortManageProfileIcon.png"] forState:UIControlStateNormal];
    
    
    
    [btnReferenceDesk setBackgroundImage:
     [UIImage imageNamed:@"iphone5PortReferenceDeskIcon.png"] forState:UIControlStateNormal];
    
    
    
    [imgHeader setImage:
     [UIImage imageNamed:@"iphone5PortCommonHeader.png"]];
    
    [imgBg setImage:  [UIImage imageNamed:@"iphone5Portcommonbackground.png"]];
    
    [imgMainmenuBg setImage:  [UIImage imageNamed:@"iphone5PortMainboxBg"]];
    
    [imgAimLogo setImage:  [UIImage imageNamed:@"iphone5PortCommonAimlogo.png"]];
    
    
    [imgMobilePortal setImage:  [UIImage imageNamed:@"iphone5CommonMobilePortalLogo.png"]];
    
    
    [imgFooter setImage:  [UIImage imageNamed:@"iphone5PorFooterbg.png"]];
    
    

}

-(void)resizeiphone5_land{
    
    imgHeader.frame=CGRectMake(0,-2,568,43);
    lblHome.frame=CGRectMake(201,3,181,35);
    btnLogout.frame=CGRectMake(525,2,38,36);
    imgBg.frame=CGRectMake(0,0,568,320);
    imgMainmenuBg.frame=CGRectMake(11,40,552,223);
    btnOrderReq.frame=CGRectMake(61,52,94,90);
    lblStartYourOrder.frame=CGRectMake(70,139,135,42);
    btnCheckOrderStatus.frame=CGRectMake(193,52,94,90);
    lblCheckStatus.frame=CGRectMake(193,135,102,39);
    btnAccessReport.frame=CGRectMake(316,52,94,90);
    lblAccessReport.frame=CGRectMake(316,140,107,30);
    btnOptinetRegistration.frame=CGRectMake(447,52,94,90);
    lblAccessOptinet.frame=CGRectMake(447,139,108,42);
    btnManagePhysicianList.frame=CGRectMake(145,183,53,50);
    lblManagePhyisicianList.frame=CGRectMake(132,229,105,37);
    btnManageProfile.frame=CGRectMake(279,183,53,50);
    lblManage.frame=CGRectMake(258,229,112,24);
    btnReferenceDesk.frame=CGRectMake(411,183,53,50);
    lblReferenceDesk.frame=CGRectMake(396,229,92,23);
    imgAimLogo.frame=CGRectMake(61,267,75,30);
    imgMobilePortal.frame=CGRectMake(393,265,148,30);
    imgFooter.frame=CGRectMake(11,263,552,41);
    
    
    
    [btnLogout setBackgroundImage:
     [UIImage imageNamed:@"iphone5PortCommonSignoutIcon.png"] forState:UIControlStateNormal];
    
    [btnOrderReq setBackgroundImage:
     [UIImage imageNamed:@"iphone5LandOrderRequestIcon.png"] forState:UIControlStateNormal];
    
    [btnCheckOrderStatus setBackgroundImage:
     [UIImage imageNamed:@"iphone5LandOrderStatusIcon.png"] forState:UIControlStateNormal];
    
    
    [btnAccessReport setBackgroundImage:
     [UIImage imageNamed:@"iphone5LandtaccessReportIcon.png"] forState:UIControlStateNormal];
    
    
    
    
    [btnOptinetRegistration setBackgroundImage:
     [UIImage imageNamed:@"iphone5LandOptinetRegistrationIcon.png"] forState:UIControlStateNormal];
    
    [btnManagePhysicianList setBackgroundImage:
     [UIImage imageNamed:@"Iphone5LandManagePhysicianIcon.png"] forState:UIControlStateNormal];
    
    
    
    [btnManageProfile setBackgroundImage:
     [UIImage imageNamed:@"iphone5LandManageProfileIcon.png"] forState:UIControlStateNormal];
    
    
    
    [btnReferenceDesk setBackgroundImage:
     [UIImage imageNamed:@"iphone5LandReferenceDeskIcon.png"] forState:UIControlStateNormal];
    
    
    
    [imgHeader setImage:
     [UIImage imageNamed:@"iphone5PortCommonHeader.png"]];
    
    [imgBg setImage:  [UIImage imageNamed:@"iphone5LandCommenBackgrounf.png"]];
    
    [imgMainmenuBg setImage:  [UIImage imageNamed:@"iphone5LandMainboxBg.png"]];
    
    [imgAimLogo setImage:  [UIImage imageNamed:@"iphone5PortCommonAimlogo.png"]];
    
    
    [imgMobilePortal setImage:  [UIImage imageNamed:@"iphone5CommonMobilePortalLogo.png"]];
    
    
    [imgFooter setImage:  [UIImage imageNamed:@"iphone5LandFooter-bg.png"]];
    
    
    
    
}

-(void)resizeiphone_landscape{
    
    
    imgHeader.frame=CGRectMake(0,0,480,43);
    lblHome.frame=CGRectMake(150,6,181,35);
    btnLogout.frame=CGRectMake(430,4,38,36);
    imgBg.frame=CGRectMake(0,0,480,320);
    imgMainmenuBg.frame=CGRectMake(0,45,480,223);
    btnOrderReq.frame=CGRectMake(15,51,94,90);
    lblStartYourOrder.frame=CGRectMake(0,136,135,42);
    btnCheckOrderStatus.frame=CGRectMake(137,51,94,90);
    lblCheckStatus.frame=CGRectMake(137,130,102,39);
    btnAccessReport.frame=CGRectMake(247,51,94,90);
    lblAccessReport.frame=CGRectMake(247,135,107,30);
    btnOptinetRegistration.frame=CGRectMake(366,51,94,90);
    lblAccessOptinet.frame=CGRectMake(363,136,108,42);
    btnManagePhysicianList.frame=CGRectMake(92,177,53,50);
    lblManagePhyisicianList.frame=CGRectMake(79,228,105,37);
    btnManageProfile.frame=CGRectMake(204,177,53,50);
    lblManage.frame=CGRectMake(179,228,112,24);
    btnReferenceDesk.frame=CGRectMake(316,177,53,50);
    lblReferenceDesk.frame=CGRectMake(304,229,92,23);
    imgAimLogo.frame=CGRectMake(35,269,75,25);
    imgMobilePortal.frame=CGRectMake(299,269,148,25);
    imgFooter.frame=CGRectMake(-5,267,491,32);
    
    
    [btnLogout setBackgroundImage:
     [UIImage imageNamed:@"iPhoneLandMainmenuScreensignout-icon.png"] forState:UIControlStateNormal];
    
    [btnOrderReq setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenorder-request-icon.png"] forState:UIControlStateNormal];
    
    [btnCheckOrderStatus setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenorder-status-icon.png"] forState:UIControlStateNormal];
    
    
    [btnAccessReport setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenaccess-report-icon.png"] forState:UIControlStateNormal];
    
    
    
    
    [btnOptinetRegistration setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenoptinet-registration-icon.png"] forState:UIControlStateNormal];
    
    [btnManagePhysicianList setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenmanage-physician-icon.png"] forState:UIControlStateNormal];
    
    
    
    [btnManageProfile setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenManageProfileicon.png"] forState:UIControlStateNormal];
    
    
    
    [btnReferenceDesk setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenreference-desk-icon.png"] forState:UIControlStateNormal];
    
    
    
    [imgHeader setImage:
     [UIImage imageNamed:@"iPhoneLandMainmenuScreenheader-title-bar.png"]];
    
    [imgBg setImage:  [UIImage imageNamed:@"iPhoneLandMainmenuScreenbackground.png"]];
    
    [imgMainmenuBg setImage:  [UIImage imageNamed:@"iPhoneLandMainmenuScreeninner-con-bg.png"]];
    
    [imgAimLogo setImage:  [UIImage imageNamed:@"iphoneLandloginscreenaimlogo.png"]];
    
    
    [imgMobilePortal setImage:  [UIImage imageNamed:@"iphoneLandloginscreenmobileportallogo.png"]];
    
    
    [imgFooter setImage:  [UIImage imageNamed:@"iphoneLandloginscreenfooterbg.png"]];
    
    
    
    
}
-(void)resizeiphone_portrait{
    
    imgHeader.frame=CGRectMake(0,0,320,35);
    lblHome.frame=CGRectMake(127,5,67,29);
    btnLogout.frame=CGRectMake(275,0,38,36);
    imgBg.frame=CGRectMake(0,0,320,460);
    imgMainmenuBg.frame=CGRectMake(6,37,308,382);
    btnOrderReq.frame=CGRectMake(31,64,94,90);
    lblStartYourOrder.frame=CGRectMake(33,148,95,42);
    btnCheckOrderStatus.frame=CGRectMake(195,64,94,90);
    lblCheckStatus.frame=CGRectMake(190,145,110,33);
    btnAccessReport.frame=CGRectMake(31,195,94,90);
    lblAccessReport.frame=CGRectMake(33,287,105,22);
    btnOptinetRegistration.frame=CGRectMake(195,195,94,90);
    lblAccessOptinet.frame=CGRectMake(184,287,112,34);
    btnManagePhysicianList.frame=CGRectMake(38,334,53,50);
    lblManagePhyisicianList.frame=CGRectMake(26,382,79,37);
    btnManageProfile.frame=CGRectMake(139,334,53,50);
    lblManage.frame=CGRectMake(109,382,113,21);
    btnReferenceDesk.frame=CGRectMake(234,334,53,50);
    lblReferenceDesk.frame=CGRectMake(234,380,60,40);
    imgAimLogo.frame=CGRectMake(19,424,81,33);
    imgMobilePortal.frame=CGRectMake(168,430,132,22);
    imgFooter.frame=CGRectMake(6,419,308,44);
    
    
    [btnLogout setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreensignout-icon.png"] forState:UIControlStateNormal];
    
    [btnOrderReq setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenorder-request-icon.png"] forState:UIControlStateNormal];
    
    [btnCheckOrderStatus setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenorder-status-icon.png"] forState:UIControlStateNormal];
    
    
    [btnAccessReport setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenaccess-report-icon.png"] forState:UIControlStateNormal];
    
    
    
    
    [btnOptinetRegistration setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenoptinet-registration-icon.png"] forState:UIControlStateNormal];
    
    [btnManagePhysicianList setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenmanage-physician-icon.png"] forState:UIControlStateNormal];
    
    
    
    [btnManageProfile setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenManageProfileicon.png"] forState:UIControlStateNormal];
    
    
    
    [btnReferenceDesk setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenreference-desk-icon.png"] forState:UIControlStateNormal];
    
    
    
    [imgHeader setImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenheader-title-bar.png"]];
    
    [imgBg setImage:  [UIImage imageNamed:@"iPhonePortMainmenuScreenlogin-background.png"]];
    
    [imgMainmenuBg setImage:  [UIImage imageNamed:@"iPhonePortMainmenuScreenmain-bg.png"]];
    
    [imgAimLogo setImage:  [UIImage imageNamed:@"iPhonePortMainmenuScreenaim-logo.png"]];
    
    
    [imgMobilePortal setImage:  [UIImage imageNamed:@"iPhonePortMainmenuScreenmobile-portal-logo.png"]];
    
    
    [imgFooter setImage:  [UIImage imageNamed:@"iPhonePortMainmenuScreenfooter-bg.png"]];
    
    
    
}
-(void)resizeipad_landscape{
    imgHeader.frame=CGRectMake(0, 0, 1024, 87);
    lblHome.frame=CGRectMake(463, 21, 79, 45);
    btnLogout.frame=CGRectMake(910, 9, 74, 70);
    imgBg.frame=CGRectMake(0, 0, 1024, 768);
    imgMainmenuBg.frame=CGRectMake(1, 95, 1006, 576);
    btnOrderReq.frame=CGRectMake(31, 182, 188, 179);
    lblStartYourOrder.frame=CGRectMake(37, 363, 182, 53);
    btnCheckOrderStatus.frame=CGRectMake(282, 182, 188, 179);
    lblCheckStatus.frame=CGRectMake(305, 373, 143, 33);
    btnAccessReport.frame=CGRectMake(533, 182, 188, 179);
    lblAccessReport.frame=CGRectMake(550, 373, 155, 34);
    btnOptinetRegistration.frame=CGRectMake(784, 182, 188, 179);
    lblAccessOptinet.frame=CGRectMake(744, 375, 240, 29);
    btnManagePhysicianList.frame=CGRectMake(90, 478, 152, 143);
    lblManagePhyisicianList.frame=CGRectMake(94, 629, 148, 25);
    btnManageProfile.frame=CGRectMake(424, 478, 153, 143);
    lblManage.frame=CGRectMake(440, 626, 206, 34);
    btnReferenceDesk.frame=CGRectMake(758, 478, 152, 143);
    lblReferenceDesk.frame=CGRectMake(782, 629, 121, 28);
    imgAimLogo.frame=CGRectMake(52, 677, 173, 69);
    imgMobilePortal.frame=CGRectMake(680, 692, 279, 45);
    imgFooter.frame=CGRectMake(0, 670, 1006, 87);
    
    
    [btnLogout setBackgroundImage:
     [UIImage imageNamed:@"iPadLandMainmenuScreenlogout icon.png"] forState:UIControlStateNormal];
    
    [btnOrderReq setBackgroundImage:
     [UIImage imageNamed:@"iPadPortMainmenuScreenorder-request-icon.png"] forState:UIControlStateNormal];
    
    [btnCheckOrderStatus setBackgroundImage:
     [UIImage imageNamed:@"iPadPortMainmenuScreenorder-status-icon.png"] forState:UIControlStateNormal];
    
    
    [btnAccessReport setBackgroundImage:
     [UIImage imageNamed:@"iPadPortMainmenuScreenaccess-report-icon.png"] forState:UIControlStateNormal];
    
    
    
    
    [btnOptinetRegistration setBackgroundImage:
     [UIImage imageNamed:@"iPadPortMainmenuScreenoptinet-registration-icon.png"] forState:UIControlStateNormal];
    
    [btnManagePhysicianList setBackgroundImage:
     [UIImage imageNamed:@"iPadLandMainmenuScreenmanage-physician-icon.png"] forState:UIControlStateNormal];
    
    
    
    [btnManageProfile setBackgroundImage:
     [UIImage imageNamed:@"iPadLandMainmenuScreenmanage-profile-icon.png"] forState:UIControlStateNormal];
    
    
    
    [btnReferenceDesk setBackgroundImage:
     [UIImage imageNamed:@"iPadLandMainmenuScreenreference-desk-icon.png"] forState:UIControlStateNormal];
    
    
    
    [imgHeader setImage:
     [UIImage imageNamed:@"iPadLandMainmenuScreenheader-title-bar.png"]];
    
    [imgBg setImage:  [UIImage imageNamed:@"ipadLandloginscreenbackgroundimg.png"]];
    
    [imgMainmenuBg setImage:  [UIImage imageNamed:@"iPadLandMainmenuScreenmain inner-bg.png"]];
    
    [imgAimLogo setImage:  [UIImage imageNamed:@"ipadLandloginscreenAIM-logo.png"]];
    
    
    [imgMobilePortal setImage:  [UIImage imageNamed:@"ipadLandloginscreenmobile-portal-logo.png"]];
    
    
    [imgFooter setImage:  [UIImage imageNamed:@"iPadLandMainmenuScreenfooter-bg.png"]];
    
    
    
    
    
}

-(void)resizeipad_portrait{
    
    imgHeader.frame=CGRectMake(0,0,768,91);
    lblHome.frame=CGRectMake(345,17,79,45);
    btnLogout.frame=CGRectMake(679,10,76,71);
    imgBg.frame=CGRectMake(0,0,768,1004);
    imgMainmenuBg.frame=CGRectMake(16,93,738,817);
    btnOrderReq.frame=CGRectMake(89,158,188,179);
    lblStartYourOrder.frame=CGRectMake(95,342,182,53);
    btnCheckOrderStatus.frame=CGRectMake(492,158,188,179);
    lblCheckStatus.frame=CGRectMake(512,352,143,33);
    btnAccessReport.frame=CGRectMake(89,451,188,179);
    lblAccessReport.frame=CGRectMake(116,644,156,33);
    btnOptinetRegistration.frame=CGRectMake(492,451,188,179);
    lblAccessOptinet.frame=CGRectMake(472,646,240,29);
    btnManagePhysicianList.frame=CGRectMake(131,741,105,99);
    lblManagePhyisicianList.frame=CGRectMake(100,846,177,37);
    btnManageProfile.frame=CGRectMake(341,741,105,99);
    lblManage.frame=CGRectMake(329,845,131,39);
    btnReferenceDesk.frame=CGRectMake(540,741,105,99);
    lblReferenceDesk.frame=CGRectMake(544,848,101,33);
    imgAimLogo.frame=CGRectMake(45,918,173,69);
    imgMobilePortal.frame=CGRectMake(447,930,279,45);
    imgFooter.frame=CGRectMake(17,910,738,95);
    
    
    [btnLogout setBackgroundImage:
     [UIImage imageNamed:@"iPadLandMainmenuScreenlogout icon.png"] forState:UIControlStateNormal];
    
    [btnOrderReq setBackgroundImage:
     [UIImage imageNamed:@"iPadPortMainmenuScreenorder-request-icon.png"] forState:UIControlStateNormal];
    
    [btnCheckOrderStatus setBackgroundImage:
     [UIImage imageNamed:@"iPadPortMainmenuScreenorder-status-icon.png"] forState:UIControlStateNormal];
    
    
    [btnAccessReport setBackgroundImage:
     [UIImage imageNamed:@"iPadPortMainmenuScreenaccess-report-icon.png"] forState:UIControlStateNormal];
    
    
    
    
    [btnOptinetRegistration setBackgroundImage:
     [UIImage imageNamed:@"iPadPortMainmenuScreenoptinet-registration-icon.png"] forState:UIControlStateNormal];
    
    [btnManagePhysicianList setBackgroundImage:
     [UIImage imageNamed:@"iPadPortMainmenuScreenmanage-physician-icon.png"] forState:UIControlStateNormal];
    
    
    
    [btnManageProfile setBackgroundImage:
     [UIImage imageNamed:@"iPadPortMainmenuScreenmanage-profile-icon.png"] forState:UIControlStateNormal];
    
    
    
    [btnReferenceDesk setBackgroundImage:
     [UIImage imageNamed:@"iPadPortMainmenuScreenreference-desk-icon.png"] forState:UIControlStateNormal];
    
    
    
    [imgHeader setImage:
     [UIImage imageNamed:@"iPadPortMainmenuScreenheader-bar.png"]];
    
    [imgBg setImage:  [UIImage imageNamed:@"ipadportloginscreenbackgroundimg.png"]];
    
    [imgMainmenuBg setImage:  [UIImage imageNamed:@"iPadPortMainmenuScreenmain-menu-bg.png"]];
    
    [imgAimLogo setImage:  [UIImage imageNamed:@"ipadPortloginscreenAIM-logo.png"]];
    
    
    [imgMobilePortal setImage:  [UIImage imageNamed:@"ipadPortloginscreenmobile-portal-logo.png"]];
    
    
    [imgFooter setImage:  [UIImage imageNamed:@"iPadPortMainmenuScreenfooter-bg.png"]];
    
    
    
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    
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
            
            [self resizeiphone_landscape];
            
            
        }
        else
        {
            
            [self resizeiphone_portrait];        
            
        }
    }
    }
    else
    {
        if (UIInterfaceOrientationIsLandscape
            (self.interfaceOrientation)) 
        {
            [self resizeipad_landscape];
            
        }
        else
        {
            [self resizeipad_portrait];     
            
        }
    }}

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
                
                
                [self resizeiphone_portrait];
                
                
            }
            else
            {
                [self resizeiphone_landscape];
                
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
            [self resizeipad_portrait];
            
            //[self.lblMember setHidden:YES];
            //[self resizeMember_ipad];
            
        } else if( UIInterfaceOrientationIsLandscape(toInterfaceOrientation) ){
            // Adjust your text field...
            [self resizeipad_landscape];
        }
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

/*- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
   
        return YES;
    }*/

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}



- (IBAction) checkOrderStatus:(id)sender
{
    /*  mainmenuViewController *mainmenu = [[mainmenuViewController alloc]init];
     [[self navigationController] pushViewController:mainmenu                        animated:YES];*/
    orderstatusViewController *orderview = [[orderstatusViewController alloc] init];
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) 
    {
        orderview = [[[orderstatusViewController alloc]
                      initWithNibName:@"orderstatus_iphone" bundle:nil] autorelease];
        [[self navigationController] 
         pushViewController:orderview animated:YES]; 
    }
    else 
    {
        orderview = [[[orderstatusViewController alloc]
                      initWithNibName:@"orderstatusViewController" bundle:nil] autorelease];
        [[self navigationController]
         pushViewController:orderview                       animated:YES];
    }
    
    
}


-(IBAction)metLogout:(id)sender
{
    LoginScreen *loginview = [[LoginScreen alloc] init];
   /* [[self navigationController] pushViewController:loginview                        animated:YES];*/
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) 
    {
        
        loginview = [[[LoginScreen alloc] initWithNibName:@"LoginScreen_iPhone" bundle:nil] autorelease];
        [[self navigationController] pushViewController:loginview                        animated:YES];
        
    } else 
        
    {
        
        loginview = [[[LoginScreen alloc] initWithNibName:@"LoginScreen_iPad" bundle:nil] autorelease];
        [[self navigationController] pushViewController:loginview                        animated:YES];
    }

}

- (void) dealloc{
    
    [imgAimLogo release];
    [imgBg release];
    [imgFooter release];
    [imgHeader release];
    [imgMainmenuBg release];
    [imgMobilePortal release];
    [lblAccessOptinet release];
    [lblAccessReport release];
    [lblCheckStatus release];
    [lblHome release];
    [lblManage release];
    [lblManagePhyisicianList release];
    [lblReferenceDesk release];
    [lblStartYourOrder release];
    [btnAccessReport release];
    [btnCheckOrderStatus release];
    [btnLogout release];
    [btnManagePhysicianList release];
    [btnManageProfile release];
    [btnOptinetRegistration release];
    [btnOrderReq release];
    [btnReferenceDesk release];
    
    
    [super dealloc];
    
}
@end
