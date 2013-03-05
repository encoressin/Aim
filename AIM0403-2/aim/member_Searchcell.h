//
//  member_Searchcell.h
//  aim
//
//  Created by Encore on 07/02/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface member_Searchcell : UITableViewCell
{
    IBOutlet UILabel *lblMemberName;
    IBOutlet UILabel *lblMemberNumber;
    IBOutlet UILabel *lblSex;
    IBOutlet UILabel *lblDob;
    IBOutlet UILabel *lblProduct;
    
    IBOutlet UILabel *lblEffectiveDate;
    IBOutlet UILabel *lblTermDate;
    IBOutlet UILabel *lblState;
    IBOutlet UILabel *lblHealthPlan;
    
    //order table
    
    IBOutlet UILabel *lblOrderId;
    IBOutlet UILabel *lblOrderMemberName;
    IBOutlet UILabel *lblOrderMemberNumber;
    
    IBOutlet UILabel *lblDos;
    IBOutlet UILabel *lblOrderingProvider;
    IBOutlet UILabel *lblExpiresIn;
    
    IBOutlet UIView *cellView;
    IBOutlet UIImageView *imgArrow;
    IBOutlet UIImageView *imgOrderArrow;
    IBOutlet UIButton *btnArrow;
    IBOutlet UIButton *btnOrderArrow;    
}


@property(nonatomic,retain)IBOutlet UILabel *lblMemberName;
@property(nonatomic,retain)IBOutlet UILabel *lblMemberNumber;
@property(nonatomic,retain)IBOutlet UILabel *lblSex;
@property(nonatomic,retain)IBOutlet UILabel *lblDob;
@property(nonatomic,retain)IBOutlet UILabel *lblProduct;
@property(nonatomic,retain)IBOutlet UILabel *lblEffectiveDate;
@property(nonatomic,retain)IBOutlet UILabel *lblTermDate;
@property(nonatomic,retain)IBOutlet UILabel *lblState;
@property(nonatomic,retain)IBOutlet UILabel *lblHealthPlan;
//order table
@property(nonatomic,retain)IBOutlet UILabel *lblOrderId;
@property(nonatomic,retain)IBOutlet UILabel *lblOrderMemberName;
@property(nonatomic,retain)IBOutlet UILabel *lblOrderMemberNumber;

@property(nonatomic,retain)IBOutlet UILabel *lblDos;
@property(nonatomic,retain)IBOutlet UILabel *lblOrderingProvider;
@property(nonatomic,retain)IBOutlet UILabel *lblExpiresIn;

@property(nonatomic,retain)IBOutlet UIView *cellView;
@property(nonatomic,retain)IBOutlet UIImageView *imgArrow;


@property(nonatomic,retain)IBOutlet UIImageView *imgOrderArrow;

@property(nonatomic,retain)IBOutlet UIButton *btnArrow;

@property(nonatomic,retain)IBOutlet UIButton *btnOrderArrow;
- (IBAction)metShow:(id)sender;
- (IBAction)metOrderShow:(id)sender;

@end
