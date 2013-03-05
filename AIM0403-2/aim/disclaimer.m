//
//  disclaimer.m
//  aim
//
//  Created by GOKulnath K on 19/01/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "disclaimer.h"
#import "mainmenuViewController.h"
#import "LoginScreen.h"

@interface disclaimer ()

@end

@implementation disclaimer

@synthesize btnAgree;
@synthesize btnLogout;
@synthesize scrollHipaa;
@synthesize imgBg;
@synthesize imgInnerbg;
@synthesize imgDisclaimerbox;
@synthesize imgFooter;
@synthesize imgAimlogo;
@synthesize imgMobileportallogo;
@synthesize lblLogout;
@synthesize lblHipaa;
@synthesize lblDisclaimermsg;
@synthesize title;
@synthesize lblTitle;
@synthesize imgHeader;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (BOOL)check {
    BOOL iphone5=UIDevice.currentDevice.userInterfaceIdiom == UIUserInterfaceIdiomPhone && UIScreen.mainScreen.bounds.size.height * UIScreen.mainScreen.scale >= 1136;
    return iphone5;
}
-(void)resizeiphone5_port{
    
    lblTitle.frame=CGRectMake(126,11,82,21);
    
    imgHeader.frame=CGRectMake(0,-4,480,43);
    
    btnAgree.frame=CGRectMake(30,440,260,26);
    btnLogout.frame=CGRectMake(283,10,22,20);
    scrollHipaa.frame=CGRectMake(42,186,237,162);
    
    scrollHipaa.contentSize = CGSizeMake(210,800);
    imgBg.frame=CGRectMake(0, -7, 320,575);
    imgInnerbg.frame=CGRectMake(5,53,311,432);
    imgDisclaimerbox.frame=CGRectMake(30,174,260,189);
    imgFooter.frame=CGRectMake(5,485,310.5,58);
    imgAimlogo.frame=CGRectMake(36,498,80,32);
    imgMobileportallogo.frame=CGRectMake(168,503,132,21);
    lblLogout.frame=CGRectMake(258,99,46,26);
    lblHipaa.frame=CGRectMake(66,98,121,27);
    lblDisclaimermsg.frame=CGRectMake(4,8,233,145);
    
    [imgHeader setImage:
     [UIImage imageNamed:@"iphone5PortCommonHeader.png"]];
    
    
    [imgBg setImage:
     [UIImage imageNamed:@"iphonePortcommonbackground.png"]];
    
    [imgInnerbg setImage:
     [UIImage imageNamed:@"iphone5PortDisclaimerBackground.png"]];
    
    
    [imgDisclaimerbox setImage:
     [UIImage imageNamed:@"iphone5PortHipaa-Messagebox.png"]];
    
    
    [imgFooter setImage:
     [UIImage imageNamed:@"iphone5PortDisclaimerFooter.png"]];
    
    
    [imgAimlogo setImage:
     [UIImage imageNamed:@"iphone5PortCommonAimlogo.png"]];
    
    [imgMobileportallogo setImage:
     [UIImage imageNamed:@"iphone5CommonMobilePortalLogo.png"]];
    
    
    [btnAgree            setBackgroundImage:
     [UIImage imageNamed:@"iphone5PortDisclimerAgreeButton.png"] forState:UIControlStateNormal];
    
    [self.scrollHipaa setHidden:NO];
}
-(void)resizeiphone5_land{
    
    lblTitle.frame=CGRectMake(250,8,82,21);
    
    imgHeader.frame=CGRectMake(0,-4,560,43);
    
    
    btnAgree.frame=CGRectMake(153,230,247,23);
    btnLogout.frame=CGRectMake(525, 6, 30, 28);
    scrollHipaa.frame=CGRectMake(95, 91, 369, 128);
    
    scrollHipaa.contentSize = CGSizeMake(268,800);
    imgBg.frame=CGRectMake(0, -4, 590, 328);
    imgInnerbg.frame=CGRectMake(41, 35, 486, 228);
    imgDisclaimerbox.frame=CGRectMake(84, 82, 392, 145);
    imgFooter.frame=CGRectMake(41, 263, 486, 40);
    imgAimlogo.frame=CGRectMake(125, 265, 74, 30);
    imgMobileportallogo.frame=CGRectMake(343, 270, 121, 19);
    lblLogout.frame=CGRectMake(453, 48, 58, 20);
    lblHipaa.frame=CGRectMake(117, 52, 107, 31);
    lblDisclaimermsg.frame=CGRectMake(6, 14, 354, 185);

    
    
    [imgHeader setImage:
     [UIImage imageNamed:@"iphone5PortCommonHeader.png"]];
    
    [imgBg setImage:
     [UIImage imageNamed:@"iphone5LandCommenBackgrounf.png"]];
    
    [imgInnerbg setImage:
     [UIImage imageNamed:@"iphone5LandDisclaimerBackground.png"]];
    
    
    [imgDisclaimerbox setImage:
     [UIImage imageNamed:@"iphone5LandHipaa-Messagebox.png"]];
    
    
    [imgFooter setImage:
     [UIImage imageNamed:@"iphone5LandDisclaimerFooter.png"]];
    
    
    [imgAimlogo setImage:
     [UIImage imageNamed:@"iphone5PortCommonAimlogo.png"]];
    
    [imgMobileportallogo setImage:
     [UIImage imageNamed:@"iphone5CommonMobilePortalLogo.png"]];
    
    
    [btnAgree setBackgroundImage:
     [UIImage imageNamed:@"iphone5LandLoginBtn.png"] forState:UIControlStateNormal];
        
    
    [self.scrollHipaa setHidden:NO];

    

    
}

-(void)resizeiphone_landscape{
    
    lblTitle.frame=CGRectMake(230,7,82,16);
    
    imgHeader.frame=CGRectMake(0,-4,480,30);
    
    btnAgree.frame=CGRectMake(116,232,247,23);
    btnLogout.frame=CGRectMake(435, 3, 25, 20);
    scrollHipaa.frame=CGRectMake(98, 91, 282, 128);
    
    scrollHipaa.contentSize = CGSizeMake(268,320);
    imgBg.frame=CGRectMake(0, 0, 480, 320);
    imgInnerbg.frame=CGRectMake(70, 27, 340, 235);
    imgDisclaimerbox.frame=CGRectMake(84, 82, 311, 145);
    imgFooter.frame=CGRectMake(70, 260, 340, 40);
    imgAimlogo.frame=CGRectMake(125, 265, 74, 30);
    imgMobileportallogo.frame=CGRectMake(266, 270, 121, 19);
    lblLogout.frame=CGRectMake(313, 54, 58, 20);
    lblHipaa.frame=CGRectMake(117, 48, 107, 31);
    lblDisclaimermsg.frame=CGRectMake(7, 10, 268, 275);
    
    [btnLogout            setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortDisclaimerscreensignout-icon.png"] forState:UIControlStateNormal];
    
    [imgBg setImage:
     [UIImage imageNamed:@"iphoneLandcommonbackground.png"]];
    
    [imgInnerbg setImage:
     [UIImage imageNamed:@"iPhoneLandDisclaimerscreendisclaimer-bg.png"]];
    
    
    [imgDisclaimerbox setImage:
     [UIImage imageNamed:@"iPhoneLandDisclaimerscreendisclaimer-message-box.png"]];
    
    
    [imgFooter setImage:
     [UIImage imageNamed:@"iPhoneLandDisclaimerscreenfooter-bg.png"]];
    
    
    [imgAimlogo setImage:
     [UIImage imageNamed:@"iphoneLandloginscreenaimlogo.png"]];
    
    [imgMobileportallogo setImage:
     [UIImage imageNamed:@"iphoneLandloginscreenmobileportallogo.png"]];
    
    
    [btnAgree            setBackgroundImage:
     [UIImage imageNamed:@"iphoneLandloginscreenloginbutton.png"] forState:UIControlStateNormal];
    
    
    
    [self.view addSubview:btnLogout];


}

-(void)resizeiphone_portrait{
    
    lblTitle.frame=CGRectMake(126,10,82,13);
    
    imgHeader.frame=CGRectMake(0,-4,320,35);
    
    btnAgree.frame=CGRectMake(30,318,260,26);
    btnLogout.frame=CGRectMake(283,7,22,20);
    scrollHipaa.frame=CGRectMake(41,120,238,163);
    
    scrollHipaa.contentSize = CGSizeMake(210,400);
    imgBg.frame=CGRectMake(0, 0, 320,480);
    imgInnerbg.frame=CGRectMake(5,50,311,303);
    imgDisclaimerbox.frame=CGRectMake(30,112,261,189);
    imgFooter.frame=CGRectMake(7,351,307,58);
    imgAimlogo.frame=CGRectMake(36,364,80,32);
    imgMobileportallogo.frame=CGRectMake(168,369,132,21);
    lblLogout.frame=CGRectMake(254,77,46,26);
    lblHipaa.frame=CGRectMake(66,77,121,27);
    lblDisclaimermsg.frame=CGRectMake(14,0,210,410);
    
    [imgBg setImage:
     [UIImage imageNamed:@"iphonePortcommonbackground.png"]];
    
    [imgInnerbg setImage:
     [UIImage imageNamed:@"iPhonePortDisclaimerscreendisclaimer-bg.png"]];
    
    
    [imgDisclaimerbox setImage:
     [UIImage imageNamed:@"iPhonePortDisclaimerscreenhipaa-message-box.png"]];
    
    
    [imgFooter setImage:
     [UIImage imageNamed:@"iPhoneLandDisclaimerscreenfooter-bg.png"]];
    
    
    [imgAimlogo setImage:
     [UIImage imageNamed:@"iphoneLandloginscreenaimlogo.png"]];
    
    [imgMobileportallogo setImage:
     [UIImage imageNamed:@"iphoneLandloginscreenmobileportallogo.png"]];
    
    
    [btnAgree            setBackgroundImage:
     [UIImage imageNamed:@"iphonePortloginscreenloginbutton.png"] forState:UIControlStateNormal];
    
    [btnLogout            setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortDisclaimerscreensignout-icon.png"] forState:UIControlStateNormal];
    [self.scrollHipaa setHidden:NO];
}
-(void)resizeipad_landscape{
    btnAgree.frame=CGRectMake(231,549,542,52);
    btnLogout.frame=CGRectMake(701,149,42,42);
    imgBg.frame=CGRectMake(0, 0, 1024,768);
    imgInnerbg.frame=CGRectMake(130,79,744,530);
    imgDisclaimerbox.frame=CGRectMake(162,244,681,302);
    imgFooter.frame=CGRectMake(130,608,744,89);
    imgAimlogo.frame=CGRectMake(232,617,164,67);
    imgMobileportallogo.frame=CGRectMake(556,624,266,44);
    lblLogout.frame=CGRectMake(751,140,92,63);
    lblHipaa.frame=CGRectMake(232,133,232,70);
    lblDisclaimermsg.frame=CGRectMake(204,185,596,388);
    
    
    [imgBg setImage:
     [UIImage imageNamed:@"ipadLandloginscreenbackgroundimg.png"]];
    
    [imgInnerbg setImage:
     [UIImage imageNamed:@"iPadLandDisclaimerscreendiscalimer-box-bg.png"]];
    
    
    [imgDisclaimerbox setImage:
     [UIImage imageNamed:@"iPadLandDisclaimerscreendisclaimer-message-box.png"]];
    
    
    [imgFooter setImage:
     [UIImage imageNamed:@"iPadLandDisclaimerscreenfooter-bg.png"]];
    
    
    [imgAimlogo setImage:
     [UIImage imageNamed:@"ipadPortloginscreenAIM-logo.png"]];
    
    [imgMobileportallogo setImage:
     [UIImage imageNamed:@"ipadPortloginscreenmobile-portal-logo.png"]];
    
    
    [btnAgree            setBackgroundImage:
     [UIImage imageNamed:@"ipadLandloginscreenlogin-but.png"] forState:UIControlStateNormal];
    
    
    
    
    [self.scrollHipaa setHidden:YES];
    
}
-(void)resizeipad_portrait{
    
    btnAgree.frame=CGRectMake(114,649,540,55);
    btnLogout.frame=CGRectMake(551,176,42,40);
    imgBg.frame=CGRectMake(0, 0, 768,1004);
    imgInnerbg.frame=CGRectMake(64,115,640,609);
    imgDisclaimerbox.frame=CGRectMake(112,253,545,377);
    imgFooter.frame=CGRectMake(65,723,640,117);
    imgAimlogo.frame=CGRectMake(165,744,164,67);
    imgMobileportallogo.frame=CGRectMake(398,752,281,47);
    lblLogout.frame=CGRectMake(596,168,74,55);
    lblHipaa.frame=CGRectMake(206,180,187,31);
    lblDisclaimermsg.frame=CGRectMake(142,279,501,325);
    
    
    [imgBg setImage:
     [UIImage imageNamed:@"ipadportloginscreenbackgroundimg.png"]];
    
    [imgInnerbg setImage:
     [UIImage imageNamed:@"iPadPortDisclaimerscreendiscliamer-bg.png"]];
    
    
    [imgDisclaimerbox setImage:
     [UIImage imageNamed:@"iPadPortDisclaimerscreendiscliamer-message-box.png"]];
    
    
    [imgFooter setImage:
     [UIImage imageNamed:@"iPadLandDisclaimerscreenfooter-bg.png"]];
    
    
    [imgAimlogo setImage:
     [UIImage imageNamed:@"ipadPortloginscreenAIM-logo.png"]];
    
    [imgMobileportallogo setImage:
     [UIImage imageNamed:@"ipadLandloginscreenmobile-portal-logo.png"]];
    
    
    [btnAgree            setBackgroundImage:
     [UIImage imageNamed:@"ipadPortloginscreenlogin-but.png"] forState:UIControlStateNormal];
    
    [self.scrollHipaa setHidden:YES];
    
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


- (IBAction) agree:(id)sender
{
    mainmenuViewController *mainmenu = [[mainmenuViewController alloc]init];
     if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
         mainmenu = [[[mainmenuViewController alloc] initWithNibName:@"mainmenu_iphone" bundle:nil] autorelease];
         [[self navigationController] pushViewController:mainmenu                        animated:YES];
     }
     else {
         mainmenu = [[[mainmenuViewController alloc] initWithNibName:@"mainmenuViewController" bundle:nil] autorelease];
         [[self navigationController] pushViewController:mainmenu                        animated:YES];
     }
    
}

-(IBAction)metLogout:(id)sender
{   
    LoginScreen *loginview = [[LoginScreen alloc] init];
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        loginview = [[[LoginScreen alloc] initWithNibName:@"LoginScreen_iPhone" bundle:nil] autorelease];
        [[self navigationController] pushViewController:loginview                        animated:YES];
        
    } else {
        loginview = [[[LoginScreen alloc] initWithNibName:@"LoginScreen_iPad" bundle:nil] autorelease];
        [[self navigationController] pushViewController:loginview                        animated:YES];
    }
  
}
- (void) dealloc{
    
    [btnAgree release];
    [btnLogout release];
    [scrollHipaa release];
    [imgAimlogo release];
    [imgBg release];
    [imgDisclaimerbox release];
    [imgFooter release];
    [imgInnerbg release];
    [imgMobileportallogo release];
    [lblDisclaimermsg release];
    [lblHipaa release];
    [lblLogout release];
    [super dealloc];
    
}

@end
