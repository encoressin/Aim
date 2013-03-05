//
//  mainmenuViewController.h
//  aim
//
//  Created by GOKulnath k on 10/01/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mainmenuViewController : UIViewController
{
    IBOutlet UIImageView *imgHeader;
    IBOutlet UILabel *lblHome ;
    IBOutlet UIButton *btnLogout;
    IBOutlet UIImageView *imgBg;
    IBOutlet UIImageView *imgMainmenuBg;
    IBOutlet UIButton *btnOrderReq;
    IBOutlet UILabel *lblStartYourOrder ;
    IBOutlet UIButton *btnCheckOrderStatus;
    IBOutlet UILabel *lblCheckStatus;
    IBOutlet UIButton *btnAccessReport ;
    IBOutlet UILabel *lblAccessReport ;
    IBOutlet UIButton *btnOptinetRegistration;
    IBOutlet UILabel *lblAccessOptinet;
    IBOutlet UIButton *btnManagePhysicianList ;
    IBOutlet UILabel *lblManagePhyisicianList ;
    IBOutlet UIButton *btnManageProfile;
    IBOutlet UILabel *lblManage;
    IBOutlet UIButton *btnReferenceDesk;
    IBOutlet UILabel *lblReferenceDesk;
    IBOutlet UIImageView *imgAimLogo;
    IBOutlet UIImageView *imgMobilePortal;
    IBOutlet UIImageView *imgFooter;
    
}


@property(nonatomic,retain) IBOutlet UIImageView *imgHeader;
@property(nonatomic,retain)  IBOutlet UILabel *lblHome ;
@property(nonatomic,retain)  IBOutlet UIButton *btnLogout;
@property(nonatomic,retain) IBOutlet UIImageView *imgBg;
@property(nonatomic,retain)  IBOutlet UIImageView *imgMainmenuBg;
@property(nonatomic,retain)  IBOutlet UIButton *btnOrderReq;
@property(nonatomic,retain)  IBOutlet UILabel *lblStartYourOrder ;
@property(nonatomic,retain)  IBOutlet UIButton *btnCheckOrderStatus;
@property(nonatomic,retain)  IBOutlet UILabel *lblCheckStatus;
@property(nonatomic,retain)  IBOutlet UIButton *btnAccessReport ;
@property(nonatomic,retain)  IBOutlet UILabel *lblAccessReport ;
@property(nonatomic,retain)  IBOutlet UIButton *btnOptinetRegistration;
@property(nonatomic,retain)  IBOutlet UILabel *lblAccessOptinet;
@property(nonatomic,retain)  IBOutlet UIButton *btnManagePhysicianList ;
@property(nonatomic,retain)  IBOutlet UILabel *lblManagePhyisicianList ;
@property(nonatomic,retain)  IBOutlet UIButton *btnManageProfile;
@property(nonatomic,retain)  IBOutlet UILabel *lblManage;
@property(nonatomic,retain)  IBOutlet UIButton *btnReferenceDesk;
@property(nonatomic,retain)  IBOutlet UILabel *lblReferenceDesk;
@property(nonatomic,retain)  IBOutlet UIImageView *imgAimLogo;
@property(nonatomic,retain) IBOutlet UIImageView *imgMobilePortal;
@property(nonatomic,retain)  IBOutlet UIImageView *imgFooter;


-(void)resizeiphone_landscape;
-(void)resizeiphone_portrait;
-(void)resizeipad_landscape;
-(void)resizeipad_portrait;

-(IBAction)checkOrderStatus:(id)sender;
-(IBAction)metLogout:(id)sender;
- (BOOL)check;
- (void)resizeiphone5_land;
- (void)resizeiphone5_port;



@end
