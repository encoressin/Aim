//
//  orderInformation.h
//  aim
//
//  Created by Encore on 23/01/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface orderInformation : UIViewController

{
    IBOutlet UILabel *lblMember;
    IBOutlet UILabel *lblOrderProvider;
    IBOutlet UILabel *lblFacility;
    IBOutlet UILabel *lblExam;
    
    IBOutlet UILabel *lblMemberTitle;
    IBOutlet UILabel *lblOrderProviderTitle;
    IBOutlet UILabel *lblFacilityTitle;
    IBOutlet UILabel *lblExamTitle;
    
    IBOutlet UIButton *btnMember;
    IBOutlet UIButton *btnOrderProvider;
    IBOutlet UIButton *btnFacility;
    IBOutlet UIButton *btnExam;
    
    
    IBOutlet UIScrollView *scrlAccordion;
    
    IBOutlet UIImageView *imgBg;
    IBOutlet UIImageView *imgHeader;
    IBOutlet UIButton *btnBack;
    IBOutlet UIButton *btnLogout;
    IBOutlet UILabel *lblCheckOrder;
    
    IBOutlet UIImageView *imgInnerBg1;
    IBOutlet UIImageView *imgFooter;
    IBOutlet UIImageView *imgAim;
    IBOutlet UIImageView *imgMobile;
    IBOutlet UIImageView *imgInnerHeader;
    IBOutlet UIImageView *imgInnerBg2;
    
    IBOutlet UILabel *lblOrderInfo;
    IBOutlet UILabel *lblStatusCap;
    IBOutlet UILabel *lblStatusVal;
    IBOutlet UILabel *lblHealthCap;
    IBOutlet UILabel *lblHealthVal;
    IBOutlet UILabel *lblOrderCap;
    
    IBOutlet UILabel *lblOrderVal;
    IBOutlet UILabel *lblValidCap;
    IBOutlet UILabel *lblValidVal;
    IBOutlet UILabel *lblScheduleCap;
    IBOutlet UILabel *lblScheduleVal;
    
    IBOutlet UILabel *lblMemberCap;
    IBOutlet UILabel *lblOrderProviderCap;
    IBOutlet UILabel *lblFacilityCap;
    IBOutlet UILabel *lblExamCap;
    
    
    
}

@property(nonatomic,retain)IBOutlet UILabel *lblMember;
@property(nonatomic,retain)IBOutlet UILabel *lblOrderProvider;
@property(nonatomic,retain)IBOutlet UILabel *lblFacility;
@property(nonatomic,retain)IBOutlet UILabel *lblExam;

@property(nonatomic,retain)IBOutlet UILabel *lblMemberTitle;
@property(nonatomic,retain)IBOutlet UILabel *lblOrderProviderTitle;
@property(nonatomic,retain)IBOutlet UILabel *lblFacilityTitle;
@property(nonatomic,retain)IBOutlet UILabel *lblExamTitle;

@property(nonatomic,retain)IBOutlet UIButton *btnFacility;
@property(nonatomic,retain)IBOutlet UIButton *btnExam;
@property(nonatomic,retain)IBOutlet UIButton *btnMember;
@property(nonatomic,retain)IBOutlet UIButton *btnOrderProvider;


@property(nonatomic,retain)IBOutlet UIScrollView *scrlAccordion;

@property(nonatomic,retain)IBOutlet UIImageView *imgBg;
@property(nonatomic,retain)IBOutlet UIImageView *imgHeader;
@property(nonatomic,retain)IBOutlet UIButton *btnBack;
@property(nonatomic,retain)IBOutlet UIButton *btnLogout;
@property(nonatomic,retain)IBOutlet UILabel *lblCheckOrder;

@property(nonatomic,retain)IBOutlet UIImageView *imgInnerBg1;
@property(nonatomic,retain)IBOutlet UIImageView *imgFooter;
@property(nonatomic,retain)IBOutlet UIImageView *imgAim;
@property(nonatomic,retain)IBOutlet UIImageView *imgMobile;
@property(nonatomic,retain)IBOutlet UIImageView *imgInnerHeader;

@property(nonatomic,retain)IBOutlet UIImageView *imgInnerBg2;
@property(nonatomic,retain)IBOutlet UILabel *lblOrderInfo;
@property(nonatomic,retain)IBOutlet UILabel *lblStatusCap;
@property(nonatomic,retain)IBOutlet UILabel *lblStatusVal;
@property(nonatomic,retain)IBOutlet UILabel *lblHealthCap;

@property(nonatomic,retain)IBOutlet UILabel *lblHealthVal;
@property(nonatomic,retain)IBOutlet UILabel *lblOrderCap;
@property(nonatomic,retain)IBOutlet UILabel *lblOrderVal;
@property(nonatomic,retain)IBOutlet UILabel *lblValidCap;
@property(nonatomic,retain)IBOutlet UILabel *lblValidVal;

@property(nonatomic,retain)IBOutlet UILabel *lblScheduleCap;
@property(nonatomic,retain)IBOutlet UILabel *lblScheduleVal;
@property(nonatomic,retain)IBOutlet UILabel *lblMemberCap;
@property(nonatomic,retain)IBOutlet UILabel *lblOrderProviderCap;
@property(nonatomic,retain)IBOutlet UILabel *lblFacilityCap;

@property(nonatomic,retain)IBOutlet UILabel *lblExamCap;




-(IBAction)metMember:(id)sender;
-(IBAction)metOrderProvider:(id)sender;
-(IBAction)metFacility:(id)sender;
-(IBAction)metExam:(id)sender;

-(IBAction)metBack:(id)sender;
-(IBAction)metLogout:(id)sender;

-(void)resizeiphone_land;
-(void)resizeiphone_port;
-(void)resizeipad_land;
-(void)resizeipad_port;

-(void)resizeMember_ipad;
-(void)resizeMember_iphone;
- (BOOL)check;
- (void)resizeiphone5_land;
- (void)resizeiphone5_port;
@end
