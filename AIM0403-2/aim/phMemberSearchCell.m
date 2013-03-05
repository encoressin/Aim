//
//  phMemberSearchCell.m
//  aim
//
//  Created by Encore on 09/02/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "phMemberSearchCell.h"

@implementation phMemberSearchCell

@synthesize lblDob,lblDos,lblSex,lblState,lblOrderId,lblProduct,lblTermDate,lblExpiresIn,lblHealthPlan,
lblMemberName,lblMemberNumber,lblEffectiveDate,lblOrderMemberName,lblOrderingProvider,lblOrderMemberNumber;

@synthesize imgArrow,btnArrow,btnOrderArrow;
@synthesize cellView;
@synthesize imgOrderArrow;


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
    
    [imgArrow release];
    [imgOrderArrow release];
    [cellView release];
    [btnArrow release];
    [btnOrderArrow release];
    
    [super dealloc];
}
@end
