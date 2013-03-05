//
//  disclaimer.h
//  aim
//
//  Created by GOKulnath K on 19/01/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface disclaimer : UIViewController
{
    IBOutlet UIImageView *imgHeader;
    IBOutlet UIButton *btnAgree;
    IBOutlet UIButton *btnLogout;
    IBOutlet UIScrollView *scrollHipaa;
    IBOutlet UIImageView *imgBg ;
    IBOutlet UIImageView *imgInnerbg;
    IBOutlet UIImageView *imgDisclaimerbox;
    IBOutlet UIImageView *imgFooter ;
    IBOutlet UIImageView *imgAimlogo;
    IBOutlet UIImageView *imgMobileportallogo;
    IBOutlet UILabel *lblLogout;
    IBOutlet UILabel *lblHipaa ;
    IBOutlet UILabel *lblDisclaimermsg;
    IBOutlet UILabel *lblTitle;
    
    }

@property(nonatomic,retain) IBOutlet UIImageView *imgHeader;
@property(nonatomic,retain)IBOutlet UIButton *btnAgree;
@property(nonatomic,retain)IBOutlet UIButton *btnLogout;
@property(nonatomic,retain)IBOutlet UIScrollView *scrollHipaa;
@property(nonatomic,retain)IBOutlet UIImageView *imgBg;
@property(nonatomic,retain)IBOutlet UIImageView *imgInnerbg;
@property(nonatomic,retain)IBOutlet UIImageView *imgDisclaimerbox;
@property(nonatomic,retain)IBOutlet UIImageView *imgFooter ;
@property(nonatomic,retain)IBOutlet UIImageView *imgAimlogo;
@property(nonatomic,retain)IBOutlet UIImageView *imgMobileportallogo;
@property(nonatomic,retain)IBOutlet UILabel *lblLogout;
@property(nonatomic,retain)IBOutlet UILabel *lblHipaa ;
@property(nonatomic,retain)IBOutlet UILabel *lblDisclaimermsg;
@property(nonatomic,retain)IBOutlet UILabel *lblTitle;


-(void)resizeiphone_landscape;
-(void)resizeiphone_portrait;
-(void)resizeipad_landscape;
-(void)resizeipad_portrait;
-(IBAction)agree:(id)sender;
-(IBAction)metLogout:(id)sender;
- (BOOL)check;
- (void)resizeiphone5_land;
- (void)resizeiphone5_port;


@end
