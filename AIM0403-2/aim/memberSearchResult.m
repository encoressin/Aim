


//
//  memberSearchResult.m
//  aim
//
//  Created by Encore on 07/02/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "memberSearchResult.h"
#import "member_Searchcell.h"
#import "phMemberSearchCell.h"
#import "orderInformation.h"
#import "LoginScreen.h"
#import "orderstatusViewController.h"
#import "orderSearchResult.h"


@interface memberSearchResult ()

@end

@implementation memberSearchResult

@synthesize tblMember,scrlMember;

@synthesize currentTable;
@synthesize Str_selected;

@synthesize imgBg,imgFooter,imgHeader,imgAimLogo,imgInnerBg,
imgTableBg,imgMobilePortal,lblHeader,lblTableCaption,btnBack,btnLogout;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) 
    {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
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
    else//ipad
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

-(void)resizeiphone_land // iPhone Landscape
{
    //frame
    /*imgBg.frame = CGRectMake(0,0,480,320);
    imgHeader.frame = CGRectMake(0,0,480,43);
    btnBack.frame = CGRectMake(4,4,37,35);
    btnLogout.frame = CGRectMake(437,4,38,35);
    lblHeader.frame = CGRectMake(190,5,98,34);
    
    imgInnerBg.frame = CGRectMake(4,43,471,212);
    imgFooter.frame = CGRectMake(4,253,471,42);
    imgAimLogo.frame = CGRectMake(15,259,75,29);
    imgMobilePortal.frame = CGRectMake(343,263,117,21);
     imgTableBg.frame = CGRectMake(16,62,447,175);
     imgTableBg.frame = CGRectMake(16, 62, 447, 175);
    imgTableBg.frame = CGRectMake(16,62,447,175);
    lblTableCaption.frame = CGRectMake(20,68,188,16);
    tblMember.frame = CGRectMake(20,92,440,137);
     imgTableBg.frame = CGRectMake(16, 62, 447, 175);
     imgTableBg.frame = CGRectMake(12,130,456,115);
     tblMember.frame = CGRectMake(13,158,453,80);
*/
    
    
    
    //set image
    
    
    lblTableCaption.frame = CGRectMake(13,74,188,16);
   
    [imgBg setImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrderbackground.png"]];
    [imgHeader setImage:
     [UIImage imageNamed:@"iPhoneLandMainmenuScreenheader-title-bar.png"]];
    [imgFooter setImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrdercheckfooterbg.png"]];
    [imgInnerBg setImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrdermainbg.png"]];
    [imgTableBg setImage:
     [UIImage imageNamed:@"iphoneLandMemberSearchTableBg.png"]];
}
-(void)resizeiphone_port// iPhone Portrait
{
    
    
    /* [btnSelectSearchRight            setBackgroundImage: [UIImage imageNamed:@"iPhonePortCheckOrdertextboxright combo.png"] forState:UIControlStateNormal];
    imgBg.frame = CGRectMake(0,0,319,493);
    imgHeader.frame = CGRectMake(0,0,320,43);
    btnBack.frame = CGRectMake(7,4,37,35);
    btnLogout.frame = CGRectMake(275,5,38,35);
    lblHeader.frame = CGRectMake(101,4,98,34);
    
    imgInnerBg.frame = CGRectMake(1,45,319,370);
    imgFooter.frame = CGRectMake(0,413,320,47);
    imgAimLogo.frame = CGRectMake(13,418,80,32);
    imgMobilePortal.frame = CGRectMake(175,423,132,22);
     imgTableBg.frame = CGRectMake(12,136,296,269);
     tblMember.frame = CGRectMake(13,161,293,239);
    
    lblTableCaption.frame = CGRectMake(11,70,188,16);
    tblMember.frame = CGRectMake(20,105,280,287);*/
    
    
    lblTableCaption.frame = CGRectMake(13,77,188,16);
    
    //set image
    [imgBg setImage:
     [UIImage imageNamed:@"iphonePortcommonbackground.png"]];
    [imgHeader setImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenheader-title-bar.png"]];
    [imgFooter setImage:
     [UIImage imageNamed:@"iPhonePortCheckOrdercheckorderfooterbg.png"]];
    [imgInnerBg setImage:
     [UIImage imageNamed:@"iPhonePortCheckOrdercheckorderbg.png"]];
    
    
    
    [imgTableBg setImage:
     [UIImage imageNamed:@"iphonePortMemberSearchTableBg.png"]];
    
    
    
    
    
}

   

- (IBAction)metShow:(id)sender
{
    
    
    UIButton *btn=(UIButton *)sender;
    
    
    if (selectedIndex==btn.tag) 
    {
        self.Str_selected=@"no";
        selectedIndex = -1;
        
        
    }
    else
    {
        self.Str_selected=@"yes";
        selectedIndex = btn.tag;
        
    }
    [tblMember reloadData];

}
    
/*    orderSearchResult *orderSearch = [[orderSearchResult alloc]init];
    
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) 
    {
        
        orderSearch = [[[orderSearchResult alloc] initWithNibName:@"orderSearchResult_iphone" bundle:nil] autorelease];
        [[self navigationController] pushViewController:orderSearch                        animated:YES];
        
    } else 
        
    {
        
        orderSearch = [[[orderSearchResult alloc] initWithNibName:@"orderSearchResult" bundle:nil] autorelease];
        [[self navigationController] pushViewController:orderSearch                        animated:YES];
    }
    
}*/
-(void)resizeipad_land   // iPad Landscape
{
    //frame
   /* imgBg.frame = CGRectMake(0,0,1024,768);
    imgHeader.frame = CGRectMake(0,0,1024,87);
    lblHeader.frame = CGRectMake(412,27,181,34);
    btnBack.frame = CGRectMake(7,9,75,70);
    btnLogout.frame = CGRectMake(919,9,74,70);
    
    
    imgFooter.frame = CGRectMake(15,666,999,87);
   
    
    imgTableBg.frame = CGRectMake(41,174,943,472);
    tblMember.frame = CGRectMake(42,235,940,386);
    
    
    
    imgInnerBg.frame = CGRectMake(16,94,999,572);
    imgFooter.frame = CGRectMake(15,666,999,87);
    imgAimLogo.frame = CGRectMake(38,674,173,69);
    imgMobilePortal.frame = CGRectMake(713,687,279,45);
    
    lblTableCaption.frame = CGRectMake(44,156,291,44);
    */
   
    lblTableCaption.frame = CGRectMake(56,170,239,20);
    //set image
    [imgBg setImage:
     [UIImage imageNamed:@"ipadLandloginscreenbackgroundimg.png"]];
    [imgHeader setImage:
     [UIImage imageNamed:@"iPadLandMainmenuScreenheader-title-bar.png"]];
    [imgFooter setImage:
     [UIImage imageNamed:@"iPadLandMainmenuScreenfooter-bg.png"]];
    [imgInnerBg setImage:
     [UIImage imageNamed:@"iPadLandCheckOrderconareabg.png"]];
    [imgTableBg setImage:
     [UIImage imageNamed:@"ipadLandMemberSearchTableBg.png"]];
    
    
}
-(void)resizeipad_port // iPad Portrait
{
    //frame
    /*imgBg.frame = CGRectMake(0,0,768,1024);
    imgHeader.frame = CGRectMake(0,0,1024,87);
    lblHeader.frame = CGRectMake(294,27,181,34);
    btnBack.frame = CGRectMake(10,9,75,70);
    btnLogout.frame = CGRectMake(689,10,74,70);
    
     imgTableBg.frame = CGRectMake(41,185,686,695);
     tblMember.frame = CGRectMake(43,245,684,603);
     
     
     
     
     
     imgInnerBg.frame = CGRectMake(12,85,744,817);
     imgFooter.frame = CGRectMake(12,899,744,92);
     imgAimLogo.frame = CGRectMake(33,910,173,69);
     imgMobilePortal.frame = CGRectMake(453,922,279,45);
    
   
    imgTableBg.frame = CGRectMake(41,164,686,695);
    
    lblTableCaption.frame = CGRectMake(41,173,291,44);
    */
    
    
   lblTableCaption.frame = CGRectMake(55,175,239,20);
    
    //set image
    
    [imgBg setImage:
     [UIImage imageNamed:@"ipadportloginscreenbackgroundimg.png"]];
    [imgHeader setImage:
     [UIImage imageNamed:@"iPadLandMainmenuScreenheader-title-bar.png"]];
    [imgFooter setImage:
     [UIImage imageNamed:@"iPadPortCheckOrderfooterlogobg.png"]];
    [imgInnerBg setImage:
     [UIImage imageNamed:@"iPadPortCheckOrdercheckorderbg.png"]];
    
    
    
    [imgTableBg setImage:
     [UIImage imageNamed:@"ipadPortMemberSearchTableBg.png"]];
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
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    selectedIndex = -1;
    
    self.currentTable=@"first";
    //member values 
    arrMemberName= [[NSMutableArray alloc] initWithObjects:@"Anderson",@"Micheal",@"Bob Patric",@"Fletcher",@"James",nil];
    arrMemberNumber= [[NSMutableArray alloc] initWithObjects:@"12345",@"23456",@"34567",@"45678",@"56789",nil];
    arrSex= [[NSMutableArray alloc] initWithObjects:@"M",@"M",@"M",@"M",@"M",nil];
    arrDob= [[NSMutableArray alloc] initWithObjects:@"18/07/1989",@"15/02/1980",@"25/02/1975",@"01/01/1999",@"27/02/1990",nil];
    arrProduct= [[NSMutableArray alloc] initWithObjects:@"MRI",@"CT",@"MRI",@"CT",@"MRI",nil];
    arrEffectiveDate= [[NSMutableArray alloc] initWithObjects:@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",nil];
    arrTermDate= [[NSMutableArray alloc] initWithObjects:@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",nil];
    arrState= [[NSMutableArray alloc] initWithObjects:@"LT",@"LT",@"LT",@"LT",@"LT",nil];
    arrHealthPlan= [[NSMutableArray alloc] initWithObjects:@"BSPLC",@"BSPLC",@"BSPLC",@"BSPLC",@"BSPLC",nil];
    
    //order values
    arrOrderId = [[NSMutableArray alloc] initWithObjects:@"12345",@"12455",@"2514",@"12563",@"225852",nil];
    arrOrderMemberName = [[NSMutableArray alloc] initWithObjects:@"Anderson",@"Micheal",@"Bob Patric",@"Fletcher",@"James",nil];
    arrOrderMemberNumber = [[NSMutableArray alloc] initWithObjects:@"12345",@"23456",@"34567",@"45678",@"56789",nil];
    arrDos= [[NSMutableArray alloc] initWithObjects:@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",nil];
    arrOrderingProvider = [[NSMutableArray alloc] initWithObjects:@"AIM",@"AIM",@"AIM",@"AIM",@"AIM",nil];
    arrExpiresIn = [[NSMutableArray alloc] initWithObjects:@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",@"25/02/2013",nil];
    
    
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
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
    else//ipad
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

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        if( UIInterfaceOrientationIsPortrait(toInterfaceOrientation) )
        {
            
            [self resizeiphone_port];
            
            
        } else if( UIInterfaceOrientationIsLandscape(toInterfaceOrientation) )
        {
            
            [self resizeiphone_land];
            
        }
        
    }
    else //ipad
    {
        if( UIInterfaceOrientationIsPortrait(toInterfaceOrientation) )
        {
            
            [self resizeipad_port];
            
            
        } else if( UIInterfaceOrientationIsLandscape(toInterfaceOrientation) ){
            
           [self resizeipad_land];
            
        }
    }
    
}



/*- (void)viewWillAppear:(BOOL)animated {
 [super viewWillAppear:animated];
 UIViewController *c = [[[UIViewController alloc]init] autorelease];
 [self presentModalViewController:c animated:NO];
 [self dismissModalViewControllerAnimated:NO];
 }*/



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

/*-(BOOL)shouldAutorotate
 {
 return YES;
 }
 
 - (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
 {
 return UIInterfaceOrientationLandscapeLeft;
 }
 -(NSUInteger)supportedInterfaceOrientations
 {
 return UIInterfaceOrientationLandscapeLeft;
 }*/

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{  
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
        
    orderSearchResult *orderInfo = [[orderSearchResult alloc]init];
    
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) 
    {
        
        orderInfo = [[[orderSearchResult alloc] initWithNibName:@"orderSearchResult_iphone" bundle:nil] autorelease];
        [[self navigationController] pushViewController:orderInfo                        animated:YES];
        
    } else 
        
    {
        
        orderInfo = [[[orderSearchResult alloc] initWithNibName:@"orderSearchResult" bundle:nil] autorelease];
        [[self navigationController] pushViewController:orderInfo                        animated:YES];
    }
    
    
    



    
   /* if([self.Str_selected isEqualToString:@"yes"]){
        self.Str_selected=@"no";
        
    }else{
        self.Str_selected=@"yes";
        
        
    }

    */
    [tableView reloadData];
    
       
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{    
    static NSString *My_identifier=@"Member";
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        
        phMemberSearchCell *cell=(phMemberSearchCell *)[tableView dequeueReusableCellWithIdentifier:My_identifier];
    
        
        if (cell==nil) 
        {
            
            NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"phMemberSearchCell" owner:self options:nil];
            cell=[topLevelObjects objectAtIndex:0];
                        
            
        }
        cell.btnArrow.tag=indexPath.row;
        
        if([Str_selected isEqualToString:@"yes"])
        {
            if (selectedIndex==indexPath.row) 
            {
                
                [cell.cellView setHidden:NO]; 
                [cell.btnArrow 
                 setBackgroundImage:
                 [UIImage imageNamed:@"CommonMemberSearchdownarrowiphone2.png"] forState:UIControlStateNormal];
                [cell addSubview: cell.btnArrow];
                
                
                
            }
            else
            {
                [cell.cellView setHidden:YES];
                [cell.btnArrow 
                 setBackgroundImage:
                 [UIImage imageNamed:@"CommonMemberSearchrightarrowiphone2.png"] forState:UIControlStateNormal];
                [cell addSubview: cell.btnArrow];
            }
            

        }
        else
        {
            [cell.cellView setHidden:YES];        

        }
        
        cell.lblMemberName.text=[NSString stringWithFormat:@"%@",[arrMemberName                                                                  objectAtIndex:indexPath.row]];
        cell.lblMemberNumber.text=[NSString stringWithFormat:@"%@",[arrMemberNumber                                                                  objectAtIndex:indexPath.row]];
        
        cell.lblDob.text=[NSString stringWithFormat:@"%@",[arrDob                                                                  objectAtIndex:indexPath.row]];
        cell.lblSex.text =[NSString stringWithFormat:@"%@",[arrSex                                                                 objectAtIndex:indexPath.row]];
        cell.lblProduct.text=[NSString stringWithFormat:@"%@",[arrProduct                                                                  objectAtIndex:indexPath.row]];
        cell.lblEffectiveDate.text=[NSString stringWithFormat:@"%@",[arrEffectiveDate                                                                  objectAtIndex:indexPath.row]];
        cell.lblTermDate.text=[NSString stringWithFormat:@"%@",[arrTermDate                                                                  objectAtIndex:indexPath.row]];
        cell.lblState.text=[NSString stringWithFormat:@"%@",[arrState                                                                  objectAtIndex:indexPath.row]];
        cell.lblHealthPlan.text=[NSString stringWithFormat:@"%@",[arrHealthPlan                                                                  objectAtIndex:indexPath.row]];
        
        return cell;
        
        
        
    }
    else // ipad
    {
        member_Searchcell *cell=(member_Searchcell *)[tableView dequeueReusableCellWithIdentifier:My_identifier];
            if (cell==nil) 
            {
                    
                NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"member_Searchcell" owner:self options:nil];
                    cell = [nib objectAtIndex:0];      
            }
        cell.btnArrow.tag=indexPath.row;
        
        if([Str_selected isEqualToString:@"yes"])
        {
            if (selectedIndex==indexPath.row) 
            {
                
                [cell.cellView setHidden:NO]; 
                [cell.btnArrow 
                 setBackgroundImage:
                 [UIImage imageNamed:@"CommonMemberSearchdownarrow.png"] forState:UIControlStateNormal];
                [cell addSubview: cell.btnArrow];                
                
                
            }
            else
            {
                [cell.cellView setHidden:YES];
                [cell.btnArrow 
                 setBackgroundImage:
                 [UIImage imageNamed:@"CommonMemberSearchrightarrow.png"] forState:UIControlStateNormal];
                [cell addSubview: cell.btnArrow];
            }
            
        }
        else
        {
            [cell.cellView setHidden:YES];        
            
        }
                    cell.lblMemberName.text=[NSString stringWithFormat:@"%@",[arrMemberName                                                                  objectAtIndex:indexPath.row]];
                    cell.lblMemberNumber.text=[NSString stringWithFormat:@"%@",[arrMemberNumber                                                                  objectAtIndex:indexPath.row]];
                    cell.lblSex.text =[NSString stringWithFormat:@"%@",[arrSex                                                                 objectAtIndex:indexPath.row]];
                    cell.lblDob.text=[NSString stringWithFormat:@"%@",[arrDob                                                                  objectAtIndex:indexPath.row]];
                    cell.lblProduct.text=[NSString stringWithFormat:@"%@",[arrProduct                                                                  objectAtIndex:indexPath.row]];
                    cell.lblEffectiveDate.text=[NSString stringWithFormat:@"%@",[arrEffectiveDate                                                                  objectAtIndex:indexPath.row]];
                    cell.lblTermDate.text=[NSString stringWithFormat:@"%@",[arrTermDate                                                                  objectAtIndex:indexPath.row]];
                    cell.lblState.text=[NSString stringWithFormat:@"%@",[arrState                                                                  objectAtIndex:indexPath.row]];
                    cell.lblHealthPlan.text=[NSString stringWithFormat:@"%@",[arrHealthPlan                                                                  objectAtIndex:indexPath.row]];
                    
                    return cell;
                    
       }
    
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        if([Str_selected isEqualToString:@"yes"])
        {
            if(selectedIndex == indexPath.row)
            {
                return 178.0;
            }
            else 
            {
                return 40.0;
           
            }
        
        }
        else
        {
            return 40.0;
        
        }
    }
    else //ipad
    {
        if([Str_selected isEqualToString:@"yes"])
        {
            if(selectedIndex == indexPath.row)
            {
                return 265.0;
            }
            else 
            {
                return 78.0;
                
            }
            
        }
        else
        {
            return 78.0;
            
        }  
    }
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
            
    return [arrMemberName count];  
        
   
}

-(void) dealloc
{   
    [scrlMember release];
    [tblMember release];
    [currentTable release];
    [Str_selected release];
    
    [imgBg release];
    [imgFooter release];
    [imgHeader release];
    [imgAimLogo release];
    
    [imgInnerBg release];
    [imgTableBg release];
    [imgMobilePortal release];
    [lblHeader release];
    [lblTableCaption release];
    [btnBack release];
    [btnLogout release];
    
    [super dealloc];
}
@end
