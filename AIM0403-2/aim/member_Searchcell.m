//
//  member_Searchcell.m
//  aim
//
//  Created by Encore on 07/02/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "member_Searchcell.h"

@implementation member_Searchcell

@synthesize lblDob,lblSex,lblState,lblProduct,layer,lblTermDate,lblHealthPlan,lblMemberName,lblMemberNumber,lblEffectiveDate;
@synthesize lblDos,lblOrderId,lblExpiresIn,lblOrderMemberName,lblOrderingProvider,lblOrderMemberNumber;

@synthesize imgArrow,btnArrow,btnOrderArrow;
@synthesize imgOrderArrow;
@synthesize cellView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void) dealloc{
    
    [lblDob release];
    [lblDos release];
    [lblSex release];
    [lblState release];
    [lblOrderId release];
    [lblProduct release];
    [lblTermDate release];
    [lblExpiresIn release];
    [lblHealthPlan release];
    
    [lblMemberName release];
    [lblMemberNumber release];
    [lblEffectiveDate release];
    [lblOrderMemberName release];
    [lblOrderingProvider release];
    [lblOrderMemberNumber release];
    
    [cellView release];
    [imgArrow release];
    [imgOrderArrow release];
    [btnArrow release];
    [btnOrderArrow release];
    
    [super dealloc];
}
@end
