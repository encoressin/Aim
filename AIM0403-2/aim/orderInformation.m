//
//  orderInformation.m
//  aim
//
//  Created by Encore on 23/01/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "orderInformation.h"
#import "mainmenuViewController.h"
#import "LoginScreen.h"
#import "orderSearchResult.h"

@interface orderInformation ()

@end

@implementation orderInformation

@synthesize btnMember,btnOrderProvider,btnFacility,btnExam;
@synthesize lblMember,lblOrderProvider,lblFacility,lblExam;
@synthesize scrlAccordion;

@synthesize lblExamTitle,lblMemberTitle,lblFacilityTitle,lblOrderProviderTitle;


@synthesize lblExamCap,lblOrderCap,lblOrderVal,lblValidCap,
lblValidVal,lblHealthCap,lblHealthVal,lblMemberCap,lblOrderInfo,lblStatusCap,lblStatusVal,lblCheckOrder,lblFacilityCap,lblScheduleCap,lblScheduleVal,lblOrderProviderCap,imgBg,imgAim,imgFooter,imgHeader,imgMobile,imgInnerBg1,imgInnerBg2,imgInnerHeader,btnBack,btnLogout;

-(void)resizeiphone_land
{
     imgBg.frame = CGRectMake(0,0,480,320);
     btnBack.frame = CGRectMake(6,4,37,35);
     btnLogout.frame = CGRectMake(434,3,39,37);
     imgFooter.frame = CGRectMake(2,263,477,42);
     imgHeader.frame = CGRectMake(0,0,480,43);
     
     imgAim.frame = CGRectMake(12,271,75,29);
     imgMobile.frame = CGRectMake(335,273,117,21);
     imgInnerBg1.frame = CGRectMake(2,37,477,226);
     imgInnerBg2.frame = CGRectMake(12,80,457,178);
     imgInnerHeader.frame = CGRectMake(12,46,457,35);
     
     lblCheckOrder.frame = CGRectMake(154,7,152,30);
     
     
     lblOrderInfo.frame = CGRectMake(32,56,99,16);
     lblStatusCap.frame = CGRectMake(295,50,55,28);
     lblStatusVal.frame = CGRectMake(338,51,90,25);
     
     lblHealthCap.frame = CGRectMake(32,94,72,18);
     lblHealthVal.frame = CGRectMake(112,95,51,17);
     
     lblOrderCap.frame = CGRectMake(32,114,42,15);
     lblOrderVal.frame = CGRectMake(109,114,56,15);
     
     lblScheduleCap.frame = CGRectMake(198,111,152,21);
     lblScheduleVal.frame = CGRectMake(353,112,63,19);
     
     lblValidCap.frame = CGRectMake(216,95,74,17);
     lblValidVal.frame = CGRectMake(295,95,135,17);
     
     lblExamCap.frame = CGRectMake(9,246,81,24);
     lblMemberCap.frame = CGRectMake(9,14,81,24);
     lblFacilityCap.frame = CGRectMake(9,132,81,24);
     lblOrderProviderCap.frame = CGRectMake(223,14,81,24);
     
     lblMember.frame = CGRectMake(9,46,179,78);
     lblOrderProvider.frame = CGRectMake(223,46,205,78);
     lblFacility.frame = CGRectMake(9,164,316,78);
     lblExam.frame = CGRectMake(9,268,345,100);
    
    lblMemberTitle.frame = CGRectMake(65,14,109,25);
    lblOrderProviderTitle.frame = CGRectMake(308,14,129,25);
    lblFacilityTitle.frame = CGRectMake(65,134,199,22);
    lblExamTitle.frame = CGRectMake(65,246,98,25);
    
    [imgBg            setImage:
     [UIImage imageNamed:@"iphoneLandcommonbackground.png"] ];
    [imgAim           setImage:
     [UIImage imageNamed:@"iphoneLandloginscreenaimlogo.png"] ];
    
    [imgFooter setImage:[UIImage imageNamed:@"iPhoneLandOrderInformationfooterbg.png"]];
    [imgHeader           setImage:
     [UIImage imageNamed:@"iPhoneLandMainmenuScreenheader-title-bar.png"]];
    [imgMobile           setImage:
     [UIImage imageNamed:@"iphoneLandloginscreenmobileportallogo.png"]];
    [imgInnerBg1           setImage:
     [UIImage imageNamed:@"iPhoneLandOrderInformationconareabg.png"]];
    [imgInnerBg2           setImage:
     [UIImage imageNamed:@"iPhoneLandOrderInformationinnerconbg.png"]];
    [imgInnerHeader           setImage:
     [UIImage imageNamed:@"iPhoneLandOrderInformationinnertitlebox.png"]];
    [btnLogout            setImage:
     [UIImage imageNamed:@"iPhoneLandMainmenuScreensignout-icon.png"] forState:UIControlStateNormal];
/* [btnHome           setImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrderhomebutton.png"] forState:UIControlStateNormal];*/
    
        
     scrlAccordion.frame = CGRectMake(12, 131, 437, 126);
     scrlAccordion.contentSize = CGSizeMake(437, 353); 
    
   
   
    
    [self.btnMember setHidden:YES];
    [self.btnOrderProvider setHidden:YES];
    [self.btnFacility setHidden:YES];
    [self.btnExam setHidden:YES];
    
    [self.lblMemberCap setHidden:NO];
    [self.lblOrderProviderCap setHidden:NO];
    [self.lblFacilityCap setHidden:NO];
    [self.lblExamCap setHidden:NO];
    
    [self.lblMember setHidden:NO];
    [self.lblOrderProvider setHidden:NO];
    [self.lblFacility setHidden:NO];
    [self.lblExam setHidden:NO];
    
}


- (BOOL)check {
    BOOL iphone5=UIDevice.currentDevice.userInterfaceIdiom == UIUserInterfaceIdiomPhone && UIScreen.mainScreen.bounds.size.height * UIScreen.mainScreen.scale >= 1136;
    return iphone5;
}
-(void)resizeiphone5_land{
    
    imgBg.frame = CGRectMake(0,0,568,320);
    btnBack.frame = CGRectMake(6,2,37,35);
    btnLogout.frame = CGRectMake(520,2,39,37);
    imgFooter.frame = CGRectMake(2,265,561,38);
    imgHeader.frame = CGRectMake(0,-2,568,43);
    
    imgAim.frame = CGRectMake(32,268,75,29);
    imgMobile.frame = CGRectMake(423,273,117,21);
    imgInnerBg1.frame = CGRectMake(2,42,561,223);
    imgInnerBg2.frame = CGRectMake(14,86,540,180);
    imgInnerHeader.frame = CGRectMake(14,51,540,35);
    
    lblCheckOrder.frame = CGRectMake(190,3,187,30);
    
    
    lblOrderInfo.frame = CGRectMake(32,61,99,16);
    lblStatusCap.frame = CGRectMake(295,55,55,28);
    lblStatusVal.frame = CGRectMake(338,56,90,25);
    
    lblHealthCap.frame = CGRectMake(36,94,72,18);
    lblHealthVal.frame = CGRectMake(116,95,51,17);
    
    lblOrderCap.frame = CGRectMake(36,114,42,15);
    lblOrderVal.frame = CGRectMake(113,114,56,15);
    
    lblScheduleCap.frame = CGRectMake(309,111,152,21);
    lblScheduleVal.frame = CGRectMake(464,112,63,19);
    
    lblValidCap.frame = CGRectMake(313,95,74,17);
    lblValidVal.frame = CGRectMake(392,95,135,17);
    
    lblExamCap.frame = CGRectMake(36,226,81,24);
    lblMemberCap.frame = CGRectMake(36,14,81,24);
    lblFacilityCap.frame = CGRectMake(36,112,81,24);
    lblOrderProviderCap.frame = CGRectMake(347,14,81,24);
    
    lblMember.frame = CGRectMake(36,46,179,58);
    lblOrderProvider.frame = CGRectMake(347,46,205,58);
    lblFacility.frame = CGRectMake(36,144,316,58);
    lblExam.frame = CGRectMake(36,258,345,84);
    
    [imgBg            setImage:
     [UIImage imageNamed:@"iphone5LandCommenBackgrounf.png"] ];
    [imgAim           setImage:
     [UIImage imageNamed:@"iphone5PortCommonAimlogo.png"] ];
    
    [imgFooter setImage:[UIImage imageNamed:@"iphone5LandFooterbg.png"]];
    [imgHeader           setImage:
     [UIImage imageNamed:@"iphone5PortCommonHeader.png"]];
    [imgMobile           setImage:
     [UIImage imageNamed:@"iphone5CommonMobilePortalLogo.png"]];
    [imgInnerBg1           setImage:
     [UIImage imageNamed:@"iphone5Landtinner-bg.png"]];
    [imgInnerBg2           setImage:
     [UIImage imageNamed:@"iphone5Landconareabg.png"]];
    [imgInnerHeader           setImage:
     [UIImage imageNamed:@"iphone5LandTitle-bg.png"]];
    [btnLogout            setImage:
     [UIImage imageNamed:@"iphone5PortCommonSignoutIcon.png"] forState:UIControlStateNormal];
  /*  [btnHome           setImage:
     [UIImage imageNamed:@"iphone5Commonhomeicon.png"] forState:UIControlStateNormal];*/
    
    
    scrlAccordion.frame = CGRectMake(12, 131, 517, 126);
    scrlAccordion.contentSize = CGSizeMake(517, 353);
    
    lblMemberTitle.frame = CGRectMake(92,14,109,25);
    lblOrderProviderTitle.frame = CGRectMake(432,14,129,25);
    lblFacilityTitle.frame = CGRectMake(92,114,199,22);
    lblExamTitle.frame = CGRectMake(92,226,98,25);
    
    
    [self.btnMember setHidden:YES];
    [self.btnOrderProvider setHidden:YES];
    [self.btnFacility setHidden:YES];
    [self.btnExam setHidden:YES];
    
    [self.lblMemberCap setHidden:NO];
    [self.lblOrderProviderCap setHidden:NO];
    [self.lblFacilityCap setHidden:NO];
    [self.lblExamCap setHidden:NO];
    
    [self.lblMember setHidden:NO];
    [self.lblOrderProvider setHidden:NO];
    [self.lblFacility setHidden:NO];
    [self.lblExam setHidden:NO];
    
    
}
-(void)resizeiphone5_port{
    
    imgBg.frame = CGRectMake(0,0,320,568);
    btnBack.frame = CGRectMake(4,0,42,40);
    btnLogout.frame = CGRectMake(277,2,39,37);
    imgFooter.frame = CGRectMake(8,505,307,47);
    imgHeader.frame = CGRectMake(0,-2,320,43);
    
    imgAim.frame = CGRectMake(20,512,80,32);
    imgMobile.frame = CGRectMake(168,514,132,22);
    imgInnerBg1.frame = CGRectMake(6,41,311,464);
    imgInnerBg2.frame = CGRectMake(16,91,288,413);
    imgInnerHeader.frame = CGRectMake(16,51,288,40);
    
    lblCheckOrder.frame = CGRectMake(84,3,152,30);
    
    
    lblOrderInfo.frame = CGRectMake(39,65,99,16);
    lblStatusCap.frame = CGRectMake(175,59,55,28);
    lblStatusVal.frame = CGRectMake(216,61,75,25);
    
    lblHealthCap.frame = CGRectMake(35,99,72,18);
    lblHealthVal.frame = CGRectMake(122,100,51,17);
    
    lblOrderCap.frame = CGRectMake(35,116,42,15);
    lblOrderVal.frame = CGRectMake(122,116,56,15);
    
    lblScheduleCap.frame = CGRectMake(35,144,152,21);
    lblScheduleVal.frame = CGRectMake(188,146,63,19);
    
    lblValidCap.frame = CGRectMake(35,131,74,17);
    lblValidVal.frame = CGRectMake(122,131,135,17);
    
    scrlAccordion.frame = CGRectMake(24, 168, 272, 320);
    scrlAccordion.contentSize = CGSizeMake(266, 500);
    
    
    lblMemberTitle.frame = CGRectMake(85,3,109,25);
    lblOrderProviderTitle.frame = CGRectMake(112,36,129,25);
    lblFacilityTitle.frame = CGRectMake(74,69,177,25);
    lblExamTitle.frame = CGRectMake(74,102,98,24);
    
    
    [self.lblMemberCap setHidden:YES];
    [self.lblOrderProviderCap setHidden:YES];
    [self.lblFacilityCap setHidden:YES];
    [self.lblExamCap setHidden:YES];
    [imgBg setImage:[UIImage imageNamed:@"iphone5Portcommonbackground.png"] ];
    [imgAim setImage:[UIImage imageNamed:@"iphone5PortCommonAimlogo.png"] ];
    
    [imgFooter setImage:[UIImage imageNamed:@"iphone5PortCommonFooter.png"]];
    [imgHeader setImage:[UIImage imageNamed:@"iphone5PortCommonHeader.png"]];
    [imgMobile setImage:[UIImage imageNamed:@"iphone5CommonMobilePortalLogo.png"]];
    [imgInnerBg1 setImage:[UIImage imageNamed:@"iphone5portinner-bg.png"]];
    [imgInnerBg2 setImage:[UIImage imageNamed:@"iphone5Portconareabg.png"]];
    [imgInnerHeader setImage:[UIImage imageNamed:@"iphone5PortTitle-bg.png"]];
    
    [btnLogout setImage:[UIImage imageNamed:@"iphone5PortCommonSignoutIcon.png"] forState:UIControlStateNormal];
   /* [btnHome setImage:[UIImage imageNamed:@"iphone5Commonhomeicon.png"] forState:UIControlStateNormal];*/
    
    [self.btnMember setHidden:NO];
    [self.btnOrderProvider setHidden:NO];
    [self.btnFacility setHidden:NO];
    [self.btnExam setHidden:NO];
    
    [self.lblMember setHidden:NO];
    [self.lblOrderProvider setHidden:YES];
    [self.lblFacility setHidden:YES];
    [self.lblExam setHidden:YES];
}
-(void)resizeiphone_port
{
     imgBg.frame = CGRectMake(0,0,320,460);
     btnBack.frame = CGRectMake(5,3,42,40);
     btnLogout.frame = CGRectMake(277,5,39,37);
     imgFooter.frame = CGRectMake(5,419,311,47);
     imgHeader.frame = CGRectMake(0,0,320,43);
     
     imgAim.frame = CGRectMake(20,427,80,32);
     imgMobile.frame = CGRectMake(168,432,132,22);
     imgInnerBg1.frame = CGRectMake(5,37,311,385);
     imgInnerBg2.frame = CGRectMake(16,91,288,328);
     imgInnerHeader.frame = CGRectMake(16,51,288,40);
     
     lblCheckOrder.frame = CGRectMake(84,7,152,30);
     
     
     lblOrderInfo.frame = CGRectMake(32,61,99,16);
     lblStatusCap.frame = CGRectMake(168,55,55,28);
     lblStatusVal.frame = CGRectMake(209,56,150,25);
     
     lblHealthCap.frame = CGRectMake(35,99,72,18);
     lblHealthVal.frame = CGRectMake(122,100,51,17);
     
     lblOrderCap.frame = CGRectMake(35,116,42,15);
     lblOrderVal.frame = CGRectMake(122,116,56,15);
     
     lblScheduleCap.frame = CGRectMake(35,144,152,21);
     lblScheduleVal.frame = CGRectMake(188,146,63,19);
     
     lblValidCap.frame = CGRectMake(35,131,74,17);
     lblValidVal.frame = CGRectMake(122,131,135,17);
     
     scrlAccordion.frame = CGRectMake(27, 166, 266, 245);
     scrlAccordion.contentSize = CGSizeMake(266, 360); 
     
     
     lblMemberTitle.frame = CGRectMake(85,3,109,25);
     lblOrderProviderTitle.frame = CGRectMake(112,123,129,25);
     lblFacilityTitle.frame = CGRectMake(64,159,160,20);
     lblExamTitle.frame = CGRectMake(64,190,98,24);
    
    

    [self.lblMemberCap setHidden:YES];
    [self.lblOrderProviderCap setHidden:YES];
    [self.lblFacilityCap setHidden:YES];
    [self.lblExamCap setHidden:YES];
    [imgBg setImage:[UIImage imageNamed:@"iphonePortcommonbackground.png"] ];
    [imgAim setImage:[UIImage imageNamed:@"iPhonePortMainmenuScreenaim-logo.png"] ];
    
    [imgFooter setImage:[UIImage imageNamed:@"iPhonePortCheckOrdercheckorderfooterbg.png"]];
    [imgHeader setImage:[UIImage imageNamed:@"iPhonePortMainmenuScreenheader-title-bar.png"]];
    [imgMobile setImage:[UIImage imageNamed:@"iPhonePortCheckOrdermobileportallogoimg.png"]];
    [imgInnerBg1 setImage:[UIImage imageNamed:@"iPhonePortCheckOrdercheckorderbg.png"]];
    [imgInnerBg2 setImage:[UIImage imageNamed:@"iPhonePortOrderInformationconarea.png"]];
    [imgInnerHeader setImage:[UIImage imageNamed:@"iPhonePortOrderInformationtitlebar.png"]];
   
    [btnLogout setImage:[UIImage imageNamed:@"iPhonePortMainmenuScreensignout-icon.png"] forState:UIControlStateNormal];
   /* [btnHome setImage:[UIImage imageNamed:@"iPhoneLandCheckOrderhomebutton.png"] forState:UIControlStateNormal];*/
    
    
    [self.btnMember setHidden:NO];
    [self.btnOrderProvider setHidden:NO];
    [self.btnFacility setHidden:NO];
    [self.btnExam setHidden:NO];

    [self.lblMember setHidden:NO];
    [self.lblOrderProvider setHidden:YES];
    [self.lblFacility setHidden:YES];
    [self.lblExam setHidden:YES];
}

-(void)resizeipad_land
{
    /**/
    
    
    
    imgBg.frame = CGRectMake(0,0,1024,768);
    btnBack.frame = CGRectMake(21,9,79,74);
    btnLogout.frame = CGRectMake(919,10,76,71);
    imgFooter.frame = CGRectMake(6,675,1004,79);
    imgHeader.frame = CGRectMake(0,0,1024,91);
    
    imgAim.frame = CGRectMake(31,684,173,62);
    imgMobile.frame = CGRectMake(699,698,279,45);
    imgInnerBg1.frame = CGRectMake(6,92,1004,584);
    imgInnerBg2.frame = CGRectMake(21,224,974,443);
    imgInnerHeader.frame = CGRectMake(21,115,974,128);
    
    lblCheckOrder.frame = CGRectMake(383,25,239,40);
    
    scrlAccordion.frame = CGRectMake(43,550,929,361);
    scrlAccordion.contentSize = CGSizeMake(929, 600); 
    
    lblOrderInfo.frame = CGRectMake(63,154,137,35);
    lblStatusCap.frame = CGRectMake(756,158,55,28);
    lblStatusVal.frame = CGRectMake(822,159,150,25);
    
    lblHealthCap.frame = CGRectMake(71,232,108,32);
    lblHealthVal.frame = CGRectMake(176,232,108,32);
    
    lblOrderCap.frame = CGRectMake(392,232,108,32);
    lblOrderVal.frame = CGRectMake(467,232,108,32);
    
    lblScheduleCap.frame = CGRectMake(392,258,212,32);
    lblScheduleVal.frame = CGRectMake(612,258,108,32);
    
    lblValidCap.frame = CGRectMake(72,258,108,32);
    lblValidVal.frame = CGRectMake(176,258,193,32);
    
    
    lblMemberCap.frame = CGRectMake(8,17,77,26);
    lblOrderProviderCap.frame = CGRectMake(541,17,124,26);
    lblFacilityCap.frame = CGRectMake(7,175,78,31);
    lblExamCap.frame = CGRectMake(7,325,59,51);
    
    lblMemberTitle.frame = CGRectMake(93,5,194,51);
    lblOrderProviderTitle.frame = CGRectMake(726,5,233,51);
    lblFacilityTitle.frame = CGRectMake(93,166,257,51);
    lblExamTitle.frame = CGRectMake(93,325,233,51);
    
    lblMember.frame=CGRectMake(7,58,288,116);
    lblOrderProvider.frame=CGRectMake(541,38,257,153);
    lblFacility.frame=CGRectMake(8,214,600,125);
    lblExam.frame=CGRectMake(7,352,884,95);
    
    [self.btnMember setHidden:YES];
    [self.btnOrderProvider setHidden:YES];
    [self.btnFacility setHidden:YES];
    [self.btnExam setHidden:YES];
    
    [self.lblFacility setHidden:NO];
    [self.lblOrderProvider setHidden:NO];
    [self.lblMember setHidden:NO];
    [self.lblExam setHidden:NO];
    
    [self.lblExamCap setHidden:NO];
    [self.lblFacilityCap setHidden:NO];
    [self.lblMemberCap setHidden:NO];
    [self.lblOrderProviderCap setHidden:NO];
    
    [imgFooter setImage:[UIImage imageNamed:@"IpadLandOrderInformationfooter.png"]];
    [imgInnerBg1 setImage:[UIImage imageNamed:@"IpadLandOrderInformationconareabg.png"]];
    [imgInnerBg2 setImage:[UIImage imageNamed:@"IpadLandOrderInformationconareainnerbg.png"]];
    [imgInnerHeader setImage:[UIImage imageNamed:@"IpadLandOrderInformationtitleheader.png"]];

}

-(void)resizeipad_port
{   
    
    imgBg.frame = CGRectMake(0,0,768,1004);
    btnBack.frame = CGRectMake(21,9,79,74);
    btnLogout.frame = CGRectMake(680,10,76,71);
    imgFooter.frame = CGRectMake(12,910,744,92);
    imgHeader.frame = CGRectMake(0,0,768,91);
    
    imgAim.frame = CGRectMake(37,919,173,69);
    imgMobile.frame = CGRectMake(452,931,279,45);
    imgInnerBg1.frame = CGRectMake(12,94,744,817);
    imgInnerBg2.frame = CGRectMake(45,225,678,686);
    imgInnerHeader.frame = CGRectMake(45,97,678,128);
    
    lblCheckOrder.frame = CGRectMake(265,26,239,40);
    
    scrlAccordion.frame = CGRectMake(62,346,638,537);
    scrlAccordion.contentSize = CGSizeMake(638, 600); 
    
    lblOrderInfo.frame = CGRectMake(102,150,137,35);
    lblStatusCap.frame = CGRectMake(483,157,55,28);
    lblStatusVal.frame = CGRectMake(546,158,150,25);
    
    lblHealthCap.frame = CGRectMake(102,237,108,32);
    lblHealthVal.frame = CGRectMake(327,239,108,32);
    
    lblOrderCap.frame = CGRectMake(102,264,108,32);
    lblOrderVal.frame = CGRectMake(326,264,108,32);
    
    lblScheduleCap.frame = CGRectMake(102,312,212,32);
    lblScheduleVal.frame = CGRectMake(327,312,108,32);
    
    lblValidCap.frame = CGRectMake(102,287,108,32);
    lblValidVal.frame = CGRectMake(327,287,193,32);
    
    btnMember.frame = CGRectMake(10,9,618,51);
    lblMember.frame = CGRectMake(34, 68, 229, 153);
    
    lblMemberTitle.frame = CGRectMake(225,9,194,51);
//    lblOrderProviderTitle.frame = CGRectMake(225,229,233,51);
//    lblFacilityTitle.frame = CGRectMake(225,228,257,51);
//    lblExamTitle.frame = CGRectMake(225,347,233,51);
    [self resizeMember_ipad];
    
    [self.btnMember setHidden:NO];
    [self.btnOrderProvider setHidden:NO];
    [self.btnFacility setHidden:NO];
    [self.btnExam setHidden:NO];
    
    [self.lblExam setHidden:YES];
    [self.lblFacility setHidden:YES];
    [self.lblOrderProvider setHidden:YES];
    [self.lblMember setHidden:NO]; 
    
    [self.lblExamCap setHidden:YES];
    [self.lblFacilityCap setHidden:YES];
    [self.lblMemberCap setHidden:YES];
    [self.lblOrderProviderCap setHidden:YES];
    
    [imgFooter setImage:[UIImage imageNamed:@"iPadPortCheckOrderfooterlogobg.png"]];
    [imgInnerBg1 setImage:[UIImage imageNamed:@"iPadPortCheckOrdercheckorderbg.png"]];
    [imgInnerBg2 setImage:[UIImage imageNamed:@"IpadPortOrderInformationcontentbg.png"]];
    [imgInnerHeader setImage:[UIImage imageNamed:@"IpadPortOrderInformationtitlebg.png"]];
    
   
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    lblMember.text = @"Member #: XoF097120012\n116 HAPP LANE\nSTREAMWOOD, IL 60107\nDate of Birth : 09/06/1991\nPhone : (999)999-9999";
    lblOrderProvider.text = @"5841 S MARYLAND AVE STE 4D\nCHICAGO, IL 606371447\nPHONE: 97730702-1000\nFax: (773)702-3518\nNPL: 1699830679";
    lblFacility.text = @"457 LAKE COOK RD, DEERFIELD\nIL 60015-0000\nPhone: (847)291-9321\nFax:(847)291-0362\nNPL: 1972541225";
    lblExam.text = @"The Information on the patient's diagnosis symptomps/condition provided below was obtained from the Mobile Provider and has not been independently verified by AIM. AIM assumes no responsibility for the accuracy of this information or for its consistency with the patient's medical record.";
  
    
    
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
                [self.lblMember setHidden:YES];
                [self resizeMember_iphone];
            }
        }
        
        else{
        if (UIInterfaceOrientationIsLandscape(self.interfaceOrientation)) 
        {
            
            [self resizeiphone_land];
            //[self resizeiphone_port];
            
            NSLog(@"iphone land");
            
        }
        else
        {
          
            //[self resizeiphone_land];
            [self resizeiphone_port];
            [self.lblMember setHidden:YES];
            [self metMember:nil];
            
            //NSLog(@"iphone port");
           // scrlAccordion.frame = CGRectMake(27, 166, 266, 245);
           // scrlAccordion.contentSize = CGSizeMake(266, 500);
            /*CGFloat fontSize = [label.text fontSizeWithFont:[UIFont boldSystemFontOfSize:15] constrainedToSize:label.frame.size];
             label.font = [UIFont boldSystemFontOfSize:fontSize];   
            
            lblMember = [[UILabel alloc] initWithFrame:CGRectMake(18, 46, 10, 79)];
            [lblMember setFont:[UIFont fontWithName:@"System" size:12.0]];
            [lblMember setBackgroundColor:[UIColor clearColor]];
            [lblMember sizeToFit];
            lblMember.adjustsFontSizeToFitWidth = YES;
            [self.view addSubview:lblMember];
            [self.lblMember setHighlighted:YES];*/
            //lblMember.frame = CGRectMake(18, 46, 228, 35);
           //btnOrderProvider.frame = CGRectMake(18, 46, 250, 79);
            
        }
    }
          }
    else 
    {
        if (UIInterfaceOrientationIsLandscape(self.interfaceOrientation))
        {
            
            [self resizeipad_land];
           
            
            //[self.view setHidden:YES];
            NSLog(@"ipad land");
            
        }
        else
        {   [self resizeipad_port];
            
            //  [self.lblMember setHidden:YES];
            [self metMember:nil];
            
            
            
            NSLog(@"ipad port");
 
        }
            
    }

}

/*- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        if(UIInterfaceOrientationIsLandscape
           (self.interfaceOrientation))                
        {
            //[self resizeiphone_land];
            [self resizeiphone_port];
            [self btnMember];
        }
        else
        {
           //[self resizeiphone_port];
            [self resizeiphone_land];
        }
    }
    else
    {
        if (UIInterfaceOrientationIsLandscape
            (self.interfaceOrientation)) 
        {
           // [self resizeipad_land];
            [self resizeipad_port];
            [self btnMember];
        }
        else
        {
            //[self resizeipad_port];
            [self resizeipad_land];
        }
    }
}*/

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        if ([self check]) {
            
            if( UIInterfaceOrientationIsPortrait(toInterfaceOrientation) ){
                
                
                [self resizeiphone5_port];
                [self.lblMember setHidden:YES];
                [self resizeMember_iphone];
                
                
            }
            else
            {
                [self resizeiphone5_land];
                
            }
        }else{
            
            if( UIInterfaceOrientationIsPortrait(toInterfaceOrientation) ){
                
                
                [self resizeiphone_port];
                [self.lblMember setHidden:YES];
                [self resizeMember_iphone];
                
                
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
            scrlAccordion.frame = CGRectMake(62,100,638,537);
            scrlAccordion.contentSize = CGSizeMake(638, 600);
            [self.lblMember setHidden:YES];
            [self resizeMember_ipad];
            
            //[self.lblMember setHidden:YES];
            //[self resizeMember_ipad];
            
        } else if( UIInterfaceOrientationIsLandscape(toInterfaceOrientation) ){
            // Adjust your text field...
            [self resizeipad_land];
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
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
       

}*/

/*- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
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


-(IBAction)metMember:(id)sender
{   
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        if(UIInterfaceOrientationIsLandscape
           (self.interfaceOrientation))                
        {
        }
        else
        {
            if([lblMember isHidden])
            {
                btnOrderProvider.frame = CGRectMake(5, 124, 257, 25);
                btnFacility.frame = CGRectMake(5, 157, 257, 25);
                btnExam.frame = CGRectMake(5, 190, 257, 25);
                lblMember.frame = CGRectMake(20, 39, 226, 84);
                
                              // lblMemberTitle.frame = CGRectMake(65,14,109,25);
                lblOrderProviderTitle.frame = CGRectMake(112, 124,129,25);
                lblFacilityTitle.frame = CGRectMake(64, 157,177,20);
                lblExamTitle.frame = CGRectMake(64,190,98,25);
                
                
                [self.lblMember setHidden:NO];
                [self.lblOrderProvider setHidden:YES];
                [self.lblFacility setHidden:YES];
                [self.lblExam setHidden:YES];
                
                [btnMember setBackgroundImage:
                 [UIImage imageNamed:@"iPhonePortOrderInformationaccordianselected.png"] forState:UIControlStateNormal];
                [btnOrderProvider setBackgroundImage:
                 [UIImage imageNamed:@"iPhonePortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
                [btnFacility setBackgroundImage:
                 [UIImage imageNamed:@"iPhonePortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
                [btnExam setBackgroundImage:
                 [UIImage imageNamed:@"iPhonePortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
                
                
            }

        }
    }
    else//ipad
    {
        if (UIInterfaceOrientationIsLandscape
            (self.interfaceOrientation)) 
        {
        }
        else
        {
            if([self.lblMember isHidden])
            {
                btnOrderProvider.frame = CGRectMake(10, 229, 618, 51);
                btnFacility.frame = CGRectMake(10, 288, 618, 51);
                btnExam.frame = CGRectMake(10, 347, 618, 51);
                lblMember.frame = CGRectMake(34, 68, 229, 153);
                
                lblOrderProviderTitle.frame = CGRectMake(225, 229, 233, 51);
                lblFacilityTitle.frame = CGRectMake(225, 288, 257, 51);
                lblExamTitle.frame = CGRectMake(225, 347, 233, 51);
                lblMemberTitle.frame = CGRectMake(225,9,194,51);
               /* lblOrderProviderTitle.frame = CGRectMake(228,587,233,32);
                lblFacilityTitle.frame = CGRectMake(228,648,257,33);
                lblExamTitle.frame = CGRectMake(228,712,233,32);*/
                
                [self.lblMember setHidden:NO];
                [self.lblOrderProvider setHidden:YES];
                [self.lblFacility setHidden:YES];
                [self.lblExam setHidden:YES];
                
                [btnMember setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordianselected.png"] forState:UIControlStateNormal];
                [btnOrderProvider setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
                [btnFacility setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
                [btnExam setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
                
                
            }

        }
    }

            
    
    
}

-(IBAction)metOrderProvider:(id)sender
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        if(UIInterfaceOrientationIsLandscape
           (self.interfaceOrientation))                
        {
        }
        else
        {
            btnOrderProvider.frame = CGRectMake(5, 36, 257, 25);
            btnFacility.frame = CGRectMake(5, 157, 257, 25);
            btnExam.frame = CGRectMake(5, 190, 257, 25);
            lblOrderProvider.frame = CGRectMake(20, 75, 226, 84);
            
                       
            lblOrderProviderTitle.frame = CGRectMake(112, 36,129,25);
            lblFacilityTitle.frame = CGRectMake(64, 157,177,20);
            lblExamTitle.frame = CGRectMake(64,190,98,25);
            
            [self.lblOrderProvider setHidden:NO];
            [self.lblMember setHidden:YES];
            [self.lblFacility setHidden:YES];
            [self.lblExam setHidden:YES];
            
            [btnOrderProvider setBackgroundImage:
             [UIImage imageNamed:@"iPhonePortOrderInformationaccordianselected.png"] forState:UIControlStateNormal];
            [btnMember setBackgroundImage:
             [UIImage imageNamed:@"iPhonePortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
            [btnFacility setBackgroundImage:
             [UIImage imageNamed:@"iPhonePortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
            [btnExam setBackgroundImage:
             [UIImage imageNamed:@"iPhonePortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
        }
    }
    else//ipad
    {
        if (UIInterfaceOrientationIsLandscape
            (self.interfaceOrientation)) 
        {
        }
        else
        {
            if([lblOrderProvider isHidden] == TRUE)
            {
                btnOrderProvider.frame = CGRectMake(10, 68, 618, 51);
                lblOrderProvider.frame = CGRectMake(38, 150, 220, 130);
                lblOrderProviderTitle.frame = CGRectMake(255, 68, 223, 51);
                
               
                btnExam.frame = CGRectMake(10, 347, 618, 51);
                
                lblExamTitle.frame = CGRectMake(225, 347, 233, 51);
                
                btnFacility.frame = CGRectMake(10, 288, 618, 51);
                lblFacilityTitle.frame = CGRectMake(225, 288, 257, 51);
                
                [self.lblOrderProvider setHidden:NO];
                [self.lblMember setHidden:YES];
                [self.lblFacility setHidden:YES];
                [self.lblExam setHidden:YES];
                
                [btnOrderProvider setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordianselected.png"] forState:UIControlStateNormal];
                [btnMember setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
                [btnFacility setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
                [btnExam setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
                
                
            }

        }
    }
    
        

}

-(IBAction)metFacility:(id)sender
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        if(UIInterfaceOrientationIsLandscape
           (self.interfaceOrientation))                
        {
        }
        else
        {   
            btnOrderProvider.frame = CGRectMake(5, 36, 257, 25);
            lblOrderProviderTitle.frame = CGRectMake(112, 36,129,25);
            
            
            btnFacility.frame = CGRectMake(5, 69, 257, 25);
            btnExam.frame = CGRectMake(5, 190, 257, 25);
            lblFacility.frame = CGRectMake(20, 106, 226, 84);
            
            
            lblFacilityTitle.frame = CGRectMake(64, 69, 177, 20);
            lblExamTitle.frame = CGRectMake(64, 190, 98, 24);
            
            [self.lblFacility setHidden:NO];
            [self.lblOrderProvider setHidden:YES];
            [self.lblMember setHidden:YES];
            [self.lblExam setHidden:YES];
            
            [btnFacility setBackgroundImage:
             [UIImage imageNamed:@"iPhonePortOrderInformationaccordianselected.png"] forState:UIControlStateNormal];
            [btnMember setBackgroundImage:
             [UIImage imageNamed:@"iPhonePortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
            [btnOrderProvider setBackgroundImage:
             [UIImage imageNamed:@"iPhonePortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
            [btnExam setBackgroundImage:
             [UIImage imageNamed:@"iPhonePortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
        }
    }
    else//ipad
    {
        if (UIInterfaceOrientationIsLandscape
            (self.interfaceOrientation)) 
        {
        }
        else
        {
            if([lblFacility isHidden] == TRUE)
            {
                
                btnFacility.frame = CGRectMake(10, 127, 618, 51);
                lblFacility.frame = CGRectMake(38, 209, 220, 130);
                
                
               // lblMemberTitle.frame = CGRectMake(,,,);
                
                lblFacilityTitle.frame = CGRectMake(225,127,257,51);
                
                
                btnOrderProvider.frame = CGRectMake(10, 68, 618, 51);
                lblOrderProviderTitle.frame = CGRectMake(255, 68, 223, 51);
                btnExam.frame = CGRectMake(10, 347, 618, 51);
                lblExamTitle.frame = CGRectMake(225, 347, 233, 51);
                

                
                [self.lblFacility setHidden:NO];
                [self.lblOrderProvider setHidden:YES];
                [self.lblMember setHidden:YES];
                [self.lblExam setHidden:YES];
                
                [btnFacility setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordianselected.png"] forState:UIControlStateNormal];
                [btnMember setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
                [btnOrderProvider setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
                [btnExam setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
                
            }
        }
    }
    
}

-(IBAction)metExam:(id)sender
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        if(UIInterfaceOrientationIsLandscape
           (self.interfaceOrientation))                
        {
        }
        else
        {
           
            
            btnExam.frame = CGRectMake(5, 102, 257, 25);
            lblExam.frame = CGRectMake(20, 100, 226, 220);
            
            
            
            lblExamTitle.frame = CGRectMake(64,100, 233, 32);
            
            btnFacility.frame = CGRectMake(5, 69, 257, 25);
            lblFacilityTitle.frame = CGRectMake(64, 69, 177, 20);
            
            btnOrderProvider.frame = CGRectMake(5, 36, 257, 25);
            lblOrderProviderTitle.frame = CGRectMake(112, 36,129,25);
            
            /*lblMemberTitle.frame = CGRectMake(,,,);
             lblOrderProviderTitle.frame = CGRectMake(,,,);
             lblFacilityTitle.frame = CGRectMake(,,,);
             lblExamTitle.frame = CGRectMake(,,,);*/
            
            [self.lblExam setHidden:NO];
            [self.lblOrderProvider setHidden:YES];
            [self.lblMember setHidden:YES];
            [self.lblFacility setHidden:YES];
            
            [btnExam setBackgroundImage:
             [UIImage imageNamed:@"iPhonePortOrderInformationaccordianselected.png"] forState:UIControlStateNormal];
            [btnMember setBackgroundImage:
             [UIImage imageNamed:@"iPhonePortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
            [btnOrderProvider setBackgroundImage:
             [UIImage imageNamed:@"iPhonePortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
            [btnFacility setBackgroundImage:
             [UIImage imageNamed:@"iPhonePortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
        }
    }
    else//ipad
    {
        if (UIInterfaceOrientationIsLandscape
            (self.interfaceOrientation)) 
        {
        }
        else
        {
            if([lblExam isHidden] == TRUE)
            {   
               
               
                btnExam.frame = CGRectMake(10, 186, 618, 51);
                lblExam.frame = CGRectMake(34, 245, 556, 180);
                
               // lblMemberTitle.frame = CGRectMake(,,,);
                  
               lblExamTitle.frame = CGRectMake(225,186,233,51);
                
                
                btnFacility.frame = CGRectMake(10, 127, 618, 51);
                lblFacilityTitle.frame = CGRectMake(225,127,257,51);
                btnOrderProvider.frame = CGRectMake(10, 68, 618, 51);
                lblOrderProviderTitle.frame = CGRectMake(255, 68, 223, 51);
                
                [self.lblExam setHidden:NO];
                [self.lblOrderProvider setHidden:YES];
                [self.lblMember setHidden:YES];
                [self.lblFacility setHidden:YES];
                
                [btnExam setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordianselected.png"] forState:UIControlStateNormal];
                [btnMember setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
                [btnOrderProvider setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
                [btnFacility setBackgroundImage:
                 [UIImage imageNamed:@"IpadPortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
            } 
        }
    }
    
}

-(IBAction)metBack:(id)sender
{
   /* orderSearchResult *orderInfo = [[orderSearchResult alloc]init];
    
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        
        orderInfo = [[[orderSearchResult alloc] initWithNibName:@"orderSearchResult_iphone" bundle:nil] autorelease];
        [[self navigationController] pushViewController:orderInfo                        animated:YES];
        
    } else
        
    {
        
        orderInfo = [[[orderSearchResult alloc] initWithNibName:@"orderSearchResult" bundle:nil] autorelease];
        [[self navigationController] pushViewController:orderInfo                        animated:YES];
    }*/
    
    [self.navigationController popViewControllerAnimated:YES];
}
-(IBAction)metLogout:(id)sender
{
    LoginScreen *loginview = [[LoginScreen alloc] init];
    /* [[self navigationController] pushViewController:loginview                        animated:YES];*/
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        loginview = [[[LoginScreen alloc] initWithNibName:@"LoginScreen_iPhone" bundle:nil] autorelease];
        [[self navigationController] pushViewController:loginview                        animated:YES];
        
    } else {
        loginview = [[[LoginScreen alloc] initWithNibName:@"LoginScreen_iPad" bundle:nil] autorelease];
        [[self navigationController] pushViewController:loginview                        animated:YES];
    }
    
}

-(void)resizeMember_ipad
{
    btnOrderProvider.frame = CGRectMake(10, 229, 618, 51);
    btnFacility.frame = CGRectMake(10, 288, 618, 51);
    btnExam.frame = CGRectMake(10, 347, 618, 51);
    lblMember.frame = CGRectMake(34, 68, 229, 153);
    
    lblOrderProviderTitle.frame = CGRectMake(225, 229, 233, 51);
    lblFacilityTitle.frame = CGRectMake(225, 288, 257, 51);
    lblExamTitle.frame = CGRectMake(225, 347, 233, 51);
    lblMemberTitle.frame = CGRectMake(225,9,194,51);
    
    [self.lblMember setHidden:NO];
    [self.lblOrderProvider setHidden:YES];
    [self.lblFacility setHidden:YES];
    [self.lblExam setHidden:YES];
    
    [btnMember setBackgroundImage:
     [UIImage imageNamed:@"IpadPortOrderInformationaccordianselected.png"] forState:UIControlStateNormal];
    [btnOrderProvider setBackgroundImage:
     [UIImage imageNamed:@"IpadPortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
    [btnFacility setBackgroundImage:
     [UIImage imageNamed:@"IpadPortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
    [btnExam setBackgroundImage:
     [UIImage imageNamed:@"IpadPortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];  
}
-(void)resizeMember_iphone
{
    btnOrderProvider.frame = CGRectMake(5, 124, 257, 25);
    btnFacility.frame = CGRectMake(5, 157, 257, 25);
    btnExam.frame = CGRectMake(5, 190, 257, 25);
    lblMember.frame = CGRectMake(20, 39, 226, 84);
    
    // lblMemberTitle.frame = CGRectMake(65,14,109,25);
    lblOrderProviderTitle.frame = CGRectMake(112, 124,129,25);
    lblFacilityTitle.frame = CGRectMake(64, 157,177,20);
    lblExamTitle.frame = CGRectMake(64,190,98,25);
    
    
    [self.lblMember setHidden:NO];
    [self.lblOrderProvider setHidden:YES];
    [self.lblFacility setHidden:YES];
    [self.lblExam setHidden:YES];
    
    [btnMember setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortOrderInformationaccordianselected.png"] forState:UIControlStateNormal];
    [btnOrderProvider setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
    [btnFacility setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];
    [btnExam setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortOrderInformationaccordiannormal.png"] forState:UIControlStateNormal];  
}

-(void)dealloc{
    
    
    [lblExamCap release];
    [lblOrderCap release];
    [lblOrderVal release];
    [lblValidCap release];
    
    [lblValidVal release];
    [lblHealthCap release];
    [lblHealthVal release];
    [lblMemberCap release];
    [lblOrderInfo release];
    [lblStatusCap release];
    [lblStatusVal release];
    [lblCheckOrder release];
    [lblFacilityCap release];
    [lblScheduleCap release];
    [lblScheduleVal release];
    [lblOrderProviderCap release];
    
    [imgBg release];
    [imgAim release];
    [imgFooter release];
    [imgHeader release];
    [imgMobile release];
    [imgInnerBg1 release];
    [imgInnerBg2 release];
    [imgInnerHeader release];
    [btnBack release];
    [btnLogout release];
    [btnExam release];
    [btnFacility release];
    [btnMember release];
    [btnOrderProvider release];
    
    [lblExam release];
    [lblFacility release];
    [lblOrderProvider release];
    [lblMember release];
    
    [lblExamTitle release];
    [lblFacilityTitle release];
    [lblOrderProviderTitle release];
    [lblMemberTitle release];
    
    
    [super dealloc];
}

@end
