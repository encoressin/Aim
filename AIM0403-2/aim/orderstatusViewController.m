//
//  orderstatusViewController.m
//  aim


#import "orderstatusViewController.h"
#import "mainmenuViewController.h"
#import "AppDelegate.h"
#import "LoginScreen.h"
#import "orderInformation.h"

#import "memberSearchResult.h"

@interface orderstatusViewController ()

@end

@implementation orderstatusViewController

@synthesize txtHealthPlan,txtOrderId,txtSearchType;
@synthesize tblview1,tblimgbg ,tblview2,tblimgbg2, viewMemberId;

@synthesize lblHeader,lblOrderId,lblSelectHealth,lblSelectSearch,lblSearchType, imgFooter,imgHeader,imgAimLogo,imgInnerBg,imgConeArea,imgBackground,imgCheckOrder,imgMobilePortal,imgSelectHealthLeft,imgSelectSearchLeft,imgSelectOrderIdLeft,imgSelectOrderIdRight,btnHome,btnLogout,btnFindOrder,btnSelectSearchRight,btnSelectHealthRight;

@synthesize lblDOB,lblEnterTwoMember,lblEnterCriteriaMemberName,txtDOB,txtFirstName,txtLastName,txtMembernumber,scrollview,imgDOBLeft,imgDOBRight,imgFirstNameLeft,imgFirstNameRight,imgLastNameLeft,imgLastNameRight,imgMembernumberLeft,imgMembernumberRight;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
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
                
                [self resizeiphone_land];
                
                //iphone
                
            }
            else
            {
                [self resizeiphone_port];
            }
        }
    }
    else
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
    [self.tblview1 reloadData];
    [self.tblview2 reloadData];

    
    
}
- (BOOL)check {
    BOOL iphone5=UIDevice.currentDevice.userInterfaceIdiom == UIUserInterfaceIdiomPhone && UIScreen.mainScreen.bounds.size.height * UIScreen.mainScreen.scale >= 1136;
    return iphone5;
}
-(void)resizeiphone5_land{
    
    tblimgbg.frame=CGRectMake(234,81,139,75);
    self.tblview1.frame=CGRectMake(234,79,139,73);
    
    tblimgbg2.frame=CGRectMake(14,-18,139,75);
    self.tblview2.frame=CGRectMake(14,-15,139,73);
    
    scrollview.frame=CGRectMake(32,113,504,126);
    scrollview.contentSize = CGSizeMake(441,317);
    
    btnHome.frame = CGRectMake(9,3,37,35);
    btnLogout.frame = CGRectMake(523,3,38,35);
    btnFindOrder.frame = CGRectMake(190,238,175,27);
    lblHeader.frame = CGRectMake(167,3,187,30);
    lblOrderId.frame = CGRectMake(227,61,49,18);
    
    lblSelectHealth.frame = CGRectMake(9,1,179,24);
    lblSelectSearch.frame = CGRectMake(227,1,122,26);
    
    imgFooter.frame = CGRectMake(9,269,552,34);
    
    imgHeader.frame = CGRectMake(0,-3,568,43);
    imgAimLogo.frame = CGRectMake(40,270,75,29);
    imgMobilePortal.frame = CGRectMake(413,275,117,21);
    imgConeArea.frame = CGRectMake(9,37,552,232);
    
    imgBackground.frame = CGRectMake(0,0,588,568);
    
    
    imgSelectHealthLeft.frame = CGRectMake(9,26,18,24);
    txtHealthPlan.frame = CGRectMake(26,26,127,24);
    btnSelectHealthRight.frame = CGRectMake(153,26,29,24);
    
    
    
    imgSelectSearchLeft.frame = CGRectMake(228,26,18,23);
    txtSearchType.frame = CGRectMake(246,26,127,23);
    btnSelectSearchRight.frame = CGRectMake(373,26,29,23);
    
    imgSelectOrderIdLeft.frame = CGRectMake(228,87,18,24);
    txtOrderId.frame = CGRectMake(246,87,140,24);
    imgSelectOrderIdRight.frame = CGRectMake(384,87,18,24);
    
    lblEnterTwoMember.frame=CGRectMake(8,0,231,150);
    imgMembernumberLeft.frame=CGRectMake(9,87,18,23);
    txtMembernumber.frame=CGRectMake(26,87,144,23);
    imgMembernumberRight.frame=CGRectMake(170,87,18,23);
    
    lblEnterCriteriaMemberName.frame=CGRectMake(227,133,210,32);
    imgFirstNameLeft.frame=CGRectMake(220,163,18,24);
    txtFirstName.frame=CGRectMake(238,163,95,24);
    imgFirstNameRight.frame=CGRectMake(333,163,18,24);
    imgLastNameLeft.frame=CGRectMake(355,163,18,24);
    txtLastName.frame=CGRectMake(373,163,60,24);
    imgLastNameRight.frame=CGRectMake(433,163,18,24);
    
    lblDOB.frame=CGRectMake(9,133,118,18);
    imgDOBLeft.frame=CGRectMake(3,163,18,23);
    txtDOB.frame=CGRectMake(21,163,151,23);
    imgDOBRight.frame=CGRectMake(172,163,18,23);
    
    imgInnerBg.frame = CGRectMake(18,43,532,226);
    
    [btnSelectHealthRight setBackgroundImage:
     [UIImage imageNamed:@"iphone5CommonImgComboboximgright.png"] forState:UIControlStateNormal];
    
    [btnSelectSearchRight            setBackgroundImage:
     [UIImage imageNamed:@"iphone5CommonImgComboboximgright.png"] forState:UIControlStateNormal];
    
    [btnFindOrder setBackgroundImage:
     [UIImage imageNamed:@"iphone5LandfindthisorderBut.png"] forState:UIControlStateNormal];
    
    [imgHeader setImage:
     [UIImage imageNamed:@"iphone5PortCommonHeader.png"]];
    [imgBackground setImage:
     [UIImage imageNamed:@"iphone5LandCommenBackgrounf.png"]];
    [imgFooter setImage:
     [UIImage imageNamed:@"iphone5LandcheckorderFooterBg.png"]];
    [imgConeArea setImage:
     [UIImage imageNamed:@"iphone5LandcheckorderouterBgpng.png"]];
    [imgInnerBg setImage:
     [UIImage imageNamed:@"iphone5Landcheckorderstatusmain.png"]];
    [self.imgCheckOrder setHidden:YES];
    
    
    
    
    
}
-(void)resizeiphone5_port{
    
    
    tblimgbg.frame=CGRectMake(35,154,195,67);
    self.tblview1.frame=CGRectMake(35,154,195,67);
    
    tblimgbg2.frame=CGRectMake(35,87,195,67);
    self.tblview2.frame=CGRectMake(35,87,194,67);
    
    scrollview.frame=CGRectMake(24,148,273,318);
    scrollview.contentSize = CGSizeMake(278,500);
    
    btnHome.frame = CGRectMake(5,1,39,37);
    btnLogout.frame = CGRectMake(277,1,39,37);
    btnFindOrder.frame = CGRectMake(44,465,233,26);
    lblHeader.frame = CGRectMake(84,5,152,30);
    lblOrderId.frame = CGRectMake(18,169,49,18);
    
    lblSelectHealth.frame = CGRectMake(18,20,179,24);
    
    
    lblSelectSearch.frame = CGRectMake(18,95,122,26);
    
    imgFooter.frame = CGRectMake(5,508,309,40);
    
    imgHeader.frame = CGRectMake(0,-2,320,43);
    imgAimLogo.frame = CGRectMake(18,512,80,30);
    imgMobilePortal.frame = CGRectMake(166,518,132,22);
    imgConeArea.frame = CGRectMake(5,40,309,468);
    
    imgBackground.frame = CGRectMake(0,0,318,530);
    
    imgSelectHealthLeft.frame = CGRectMake(25,61,18,26);
    txtHealthPlan.frame = CGRectMake(42,61,187,26);
    btnSelectHealthRight.frame = CGRectMake(229,61,29,26);
    imgInnerBg.frame = CGRectMake(20, 44, 281, 461);
    
    
    imgSelectSearchLeft.frame = CGRectMake(25,129,18,26);
    txtSearchType.frame = CGRectMake(42,129,187,26);
    btnSelectSearchRight.frame = CGRectMake(229,129,29,26);
    
    imgSelectOrderIdLeft.frame = CGRectMake(25,195,18,26);
    txtOrderId.frame = CGRectMake(42,195,198,26);
    imgSelectOrderIdRight.frame = CGRectMake(240,195,18,26);
    
    lblEnterTwoMember.frame=CGRectMake(20, 217, 253, 47);
    imgMembernumberLeft.frame=CGRectMake(25, 262, 18, 26);
    txtMembernumber.frame=CGRectMake(42, 262, 198, 26);
    imgMembernumberRight.frame=CGRectMake(240, 262, 18, 26);
    
    lblEnterCriteriaMemberName.frame=CGRectMake(20, 288, 236, 33);
    imgFirstNameLeft.frame=CGRectMake(24, 322, 18, 26);
    txtFirstName.frame=CGRectMake(42, 322, 106, 26);
    imgFirstNameRight.frame=CGRectMake(148, 322, 18, 26);
    imgLastNameLeft.frame=CGRectMake(180, 322, 18, 26);
    txtLastName.frame=CGRectMake(198, 322, 58, 26);
    imgLastNameRight.frame=CGRectMake(250, 322, 18, 26);
    
    lblDOB.frame=CGRectMake(20, 356, 112, 14);
    imgDOBLeft.frame=CGRectMake(25, 378, 18, 26);
    txtDOB.frame=CGRectMake(42, 378,198, 26);
    imgDOBRight.frame=CGRectMake(240, 378, 18, 26);
    
    [btnSelectHealthRight setBackgroundImage:
     [UIImage imageNamed:@"iphone5CommonImgComboboximgright.png"] forState:UIControlStateNormal];
    
    [btnSelectSearchRight            setBackgroundImage:
     [UIImage imageNamed:@"iphone5CommonImgComboboximgright.png"] forState:UIControlStateNormal];
    
    [btnFindOrder setBackgroundImage:
     [UIImage imageNamed:@"iphone5PortfindthisorderBut.png"] forState:UIControlStateNormal];
    
    [imgHeader setImage:
     [UIImage imageNamed:@"iphone5PortCommonHeader.png"]];
    [imgBackground setImage:
     [UIImage imageNamed:@"iphone5Portcommonbackground.png"]];
    [imgFooter setImage:
     [UIImage imageNamed:@"iphone5PortcheckorderFooterBg.png"]];
    [imgConeArea setImage:
     [UIImage imageNamed:@"iphone5PortcheckorderouterBg.png"]];
    [imgInnerBg setImage:
     [UIImage imageNamed:@"iphone5Portcheckorderstatusmain.png"]];
    [tblimgbg setImage:
     [UIImage imageNamed:@"iphone5PortComboDropdown.png"]];
    [tblimgbg2 setImage:
     [UIImage imageNamed:@"iphone5PortComboDropdown.png"]];
    
    [self.imgCheckOrder setHidden:YES];
    
    
}

- (void)viewDidLoad
{
    
    
    
    [self.lblOrderId setHidden:NO];
    [self.imgSelectOrderIdLeft setHidden:NO];
    [self.txtOrderId setHidden:NO];
    [self.imgSelectOrderIdRight setHidden:NO];
    
    [self.lblEnterTwoMember setHidden:YES];
    [self.imgMembernumberLeft setHidden:YES];
    [self.txtMembernumber setHidden:YES];
    [self.imgMembernumberRight setHidden:YES];
    
    [self.lblEnterCriteriaMemberName setHidden:YES];
    [self.imgFirstNameLeft setHidden:YES];
    [self.txtFirstName setHidden:YES];
    [self.imgFirstNameRight setHidden:YES];
    [self.imgLastNameLeft setHidden:YES];
    [self.txtLastName setHidden:YES];
    [self.imgLastNameRight setHidden:YES];
    
    [self.lblDOB setHidden:YES];
    [self.imgDOBLeft setHidden:YES];
    [self.txtDOB setHidden:YES];
    [self.imgDOBRight setHidden:YES];
    
    
    [self.tblview2 setHidden:YES];
    [self.tblimgbg2 setHidden:YES];
    [self.tblview1 setHidden:YES];
    [self.tblimgbg setHidden:YES];
    
    arr_memplan=[[NSMutableArray alloc] initWithObjects:@"Order ID",@"Member ID",nil];
    
    arr_healthplan=[[NSMutableArray alloc] initWithObjects:@"HealthPlan 1",@"HealthPlan 2",@"HealthPlan 3",nil];
    
    
    [super viewDidLoad];
    /* Do any additional setup after loading the view from its nib.
     txtHealthPlan.frame = CGRectMake(140, 367, 445, 55);
     txtSearchType.frame = CGRectMake(140, 488, 445, 55);
     txtOrderId.frame = CGRectMake(140, 652, 463, 55);*/
    
    // [self.view addSubview:viewMemberId];
    //[self.viewMemberId setHidden:YES];
    // [self.tblSearchType setHidden:YES];
    
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
                
                [self resizeiphone_land];
                
                //iphone
                
            }
            else
            {
                [self resizeiphone_port];
            }
        }
    }
    else
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
    [self.tblview1 reloadData];
    [self.tblview2 reloadData];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (tableView==tblview1)  return [arr_memplan count];
    else if (tableView==tblview2){
        return [arr_healthplan count];}
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *Myidentifier=@"member";
    static NSString *Myidentifier1=@"healthplan";
    
   	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Myidentifier];
	if (cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Myidentifier];
	}
    
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    
    if (tableView==tblview1){	cell.textLabel.text=[NSString stringWithFormat:@"%@",[arr_memplan objectAtIndex:indexPath.row]];
        cell.textLabel.font=[UIFont fontWithName:@"Helvetica"size:12];
        cell.textLabel.textColor=[UIColor colorWithRed :40/277.0 green:131/277.0 blue:158/277.0 alpha:1];
        return cell;}
    
    
    else if  (tableView==tblview2){    cell.textLabel.text=[NSString stringWithFormat:@"%@",[arr_healthplan objectAtIndex:indexPath.row]];
        cell.textLabel.font=[UIFont fontWithName:@"Helvetica"size:12];
        cell.textLabel.textColor=[UIColor colorWithRed :40/277.0 green:131/277.0 blue:158/277.0 alpha:1];
        return cell;
        
    }return 0;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (tableView==tblview1)
    {
        txtSearchType.text=[arr_memplan objectAtIndex:indexPath.row];
        [tblimgbg setHidden:YES];
        [tblview1 setHidden:YES];
        if([arr_memplan objectAtIndex:indexPath.row]== @"Member ID")
        {
            [self.lblOrderId setHidden:YES];
            [self.imgSelectOrderIdLeft setHidden:YES];
            [self.txtOrderId setHidden:YES];
            [self.imgSelectOrderIdRight setHidden:YES];
            
            
            [self.lblEnterTwoMember setHidden:NO];
            [self.imgMembernumberLeft setHidden:NO];
            [self.txtMembernumber setHidden:NO];
            [self.imgMembernumberRight setHidden:NO];
            
            [self.lblEnterCriteriaMemberName setHidden:NO];
            [self.imgFirstNameLeft setHidden:NO];
            [self.txtFirstName setHidden:NO];
            [self.imgFirstNameRight setHidden:NO];
            [self.imgLastNameLeft setHidden:NO];
            [self.txtLastName setHidden:NO];
            [self.imgLastNameRight setHidden:NO];
            
            [self.lblDOB setHidden:NO];
            [self.imgDOBLeft setHidden:NO];
            [self.txtDOB setHidden:NO];
            [self.imgDOBRight setHidden:NO];
            
            
        }
        
        else if ([arr_memplan objectAtIndex:indexPath.row]== @"Order ID"){
            
            
            [self.lblOrderId setHidden:NO];
            [self.imgSelectOrderIdLeft setHidden:NO];
            [self.txtOrderId setHidden:NO];
            [self.imgSelectOrderIdRight setHidden:NO];
            
            [self.lblEnterTwoMember setHidden:YES];
            [self.imgMembernumberLeft setHidden:YES];
            [self.txtMembernumber setHidden:YES];
            [self.imgMembernumberRight setHidden:YES];
            
            [self.lblEnterCriteriaMemberName setHidden:YES];
            [self.imgFirstNameLeft setHidden:YES];
            [self.txtFirstName setHidden:YES];
            [self.imgFirstNameRight setHidden:YES];
            [self.imgLastNameLeft setHidden:YES];
            [self.txtLastName setHidden:YES];
            [self.imgLastNameRight setHidden:YES];
            
            [self.lblDOB setHidden:YES];
            [self.imgDOBLeft setHidden:YES];
            [self.txtDOB setHidden:YES];
            [self.imgDOBRight setHidden:YES];
            
            
        }
        
        
        
    }else if (tableView==tblview2){
        txtHealthPlan.text=[arr_healthplan objectAtIndex:indexPath.row];
        
        [tblimgbg2 setHidden:YES];
        [tblview2 setHidden:YES];
        
        
    }
}






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
                
                
                [self resizeiphone_port];
                
                
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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
        
        
    } else {
        return YES;
    }
}


-(IBAction)metMainMenu:(id)sender
{
    mainmenuViewController *mainmenu = [[mainmenuViewController alloc]init];
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        mainmenu = [[[mainmenuViewController alloc] initWithNibName:@"mainmenu_iphone" bundle:nil] autorelease];
        [[self navigationController] pushViewController:mainmenu                        animated:YES];
    }
    else {
        mainmenu = [[[mainmenuViewController alloc] initWithNibName:@"mainmenuViewController" bundle:nil] autorelease];
        [[self navigationController] pushViewController:mainmenu                        animated:YES];
    }
}

-(IBAction)metOrderInfo:(id)sender
{
    if([txtHealthPlan.text isEqualToString:@""])  {
        
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please Select a Member's Health Plan " delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
        [alert release];
        return;    }
    
    else
        if([txtSearchType.text isEqualToString:@"Member ID"])
        {
            if(([txtMembernumber.text length] > 0) &&
               (([txtDOB.text length] == 0)) &&
               ([txtFirstName.text length] == 0)&&
               ([txtLastName.text length] == 0))
            {
                UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please Enter Date of Birth or Firstname and Lastname" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                [alert show];
                [alert release];
                return;
            }
            
            else if(([txtMembernumber.text length] == 0) &&
                    (([txtDOB.text length] == 0)) &&
                    ([txtFirstName.text length] == 0)&&
                    ([txtLastName.text length] == 0))
            {
                UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please Enter any two fields" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                [alert show];
                [alert release];
                return;
            }
            
            
            else if(([txtMembernumber.text length] == 0) &&
                    (([txtDOB.text length] > 0)) &&
                    ([txtFirstName.text length] == 0)&&
                    ([txtLastName.text length] == 0))
            {
                UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please Enter Member number or Firstname and Lastname" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                [alert show];
                [alert release];
                return;
            }
            
            
            else if(([txtMembernumber.text length] == 0) &&
                    (([txtDOB.text length] == 0)) &&
                    ([txtFirstName.text length] > 0)&&
                    ([txtLastName.text length] == 0))
            {
                UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please Enter Member number and Lastname or Date of Birth and Lastname" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                [alert show];
                [alert release];
                return;
            }
            else if(([txtMembernumber.text length] == 0) &&
                    (([txtDOB.text length] == 0)) &&
                    ([txtFirstName.text length] == 0)&&
                    ([txtLastName.text length] > 0))
            {
                UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please Enter Member number and Firstname or Date of Birth and Firstname" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                [alert show];
                [alert release];
                return;
            }
            
            else if(([txtMembernumber.text length] > 0) &&
                    (([txtDOB.text length] == 0)) &&
                    ([txtFirstName.text length] == 0)&&
                    ([txtLastName.text length] > 0))
            {
                UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please Enter Firstname" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                [alert show];
                [alert release];
                return;
            }
            
            else if(([txtMembernumber.text length] > 0) &&
                    (([txtDOB.text length] == 0)) &&
                    ([txtFirstName.text length] > 0)&&
                    ([txtLastName.text length] == 0))
            {
                UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please Enter Lastname" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                [alert show];
                [alert release];
                return;
            }
            
            else if(([txtMembernumber.text length] == 0) &&
                    (([txtDOB.text length] > 0)) &&
                    ([txtFirstName.text length] > 0)&&
                    ([txtLastName.text length] == 0))
            {
                UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please Enter Lastname" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                [alert show];
                [alert release];
                return;
            }
            else if(([txtMembernumber.text length] == 0) &&
                    (([txtDOB.text length] > 0)) &&
                    ([txtFirstName.text length] == 0)&&
                    ([txtLastName.text length] > 0))
            {
                UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please Enter Firstname" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                [alert show];
                [alert release];
                return;
            }
            else if(([txtMembernumber.text length] == 0) &&
                    (([txtDOB.text length] == 0)) &&
                    ([txtFirstName.text length] > 0)&&
                    ([txtLastName.text length] > 0))
            {
                UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please Enter Member Number or Date of Birth" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                [alert show];
                [alert release];
                return;
            }
            
            
            
            else
            {
                
                
                memberSearchResult *mem = [[memberSearchResult alloc]init];
                
                
                if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
                {
                    
                    mem = [[[memberSearchResult alloc] initWithNibName:@"memberSearchResult_iphone" bundle:nil] autorelease];
                    [[self navigationController] pushViewController:mem                        animated:YES];
                    
                } else
                    
                {
                    
                    mem = [[[memberSearchResult alloc] initWithNibName:@"memberSearchResult" bundle:nil] autorelease];
                    [[self navigationController] pushViewController:mem                        animated:YES];
                }
                
            }
            
        }
        else if([txtSearchType.text isEqualToString:@"Order ID"])
        {
            if([txtOrderId.text isEqualToString:@""])
            {
                UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please Enter a Order ID" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                [alert show];
                [alert release];
                return;
                
            }
            else
            {
                
                
                orderInformation *orderInfo = [[orderInformation alloc]init];
                
                
                if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
                {
                    
                    orderInfo = [[[orderInformation alloc] initWithNibName:@"orderInformation_iphone" bundle:nil] autorelease];
                    [[self navigationController] pushViewController:orderInfo                        animated:YES];
                    
                } else
                    
                {
                    
                    orderInfo = [[[orderInformation alloc] initWithNibName:@"orderInformation" bundle:nil] autorelease];
                    [[self navigationController] pushViewController:orderInfo                        animated:YES];
                }
                
            }
        }
        else
        {
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please Select a search type" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
            [alert show];
            [alert release];
            return;
            
        }
    
    
    
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


- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        
            
            if(UIInterfaceOrientationIsLandscape
               (self.interfaceOrientation))
            {
                if([textField isEqual:txtMembernumber])
                {
                    //[textField resignFirstResponder];
                    [scrollview setContentOffset:CGPointMake(0, 85) animated: YES];
                    
                }
                
                if([textField isEqual:txtFirstName])
                {
                    [scrollview setContentOffset:CGPointMake(0, 85) animated: YES];
                }
                
                if([textField isEqual:txtLastName])
                {
                    [scrollview setContentOffset:CGPointMake(0, 85) animated: YES];
                }

                
                if([textField isEqual:txtDOB])
                {
                    [scrollview setContentOffset:CGPointMake(0, 140) animated: YES];
                }
                
                if([textField isEqual:txtOrderId])
                {
                    [scrollview setContentOffset:CGPointMake(0, 85) animated: YES];
                }

                
            }
            else //iphone port
            {
                if([textField isEqual:txtMembernumber])
                {
                    //[textField resignFirstResponder];
                    [scrollview setContentOffset:CGPointMake(0, 188) animated: YES];
                    
                }
                
                if([textField isEqual:txtFirstName])
                {
                    [scrollview setContentOffset:CGPointMake(0, 250) animated: YES];
                }
                
                if([textField isEqual:txtDOB])
                {
                    [scrollview setContentOffset:CGPointMake(0, 260) animated: YES];
                }
                
                if([textField isEqual:txtOrderId])
                {
                    [scrollview setContentOffset:CGPointMake(0, 125) animated: YES];
                }
            }
    }
    
    else //ipad
    {
        if(UIInterfaceOrientationIsLandscape
           (self.interfaceOrientation))
        {
            if([textField isEqual:txtMembernumber])
            {
                //[textField resignFirstResponder];
                [scrollview setContentOffset:CGPointMake(0, 105) animated: YES];
                
            }
            
            if([textField isEqual:txtFirstName])
            {
                [scrollview setContentOffset:CGPointMake(0, 105) animated: YES];
            }
            
            if([textField isEqual:txtLastName])
            {
                [scrollview setContentOffset:CGPointMake(0, 105) animated: YES];
            }

            
            if([textField isEqual:txtDOB])
            {
                [scrollview setContentOffset:CGPointMake(0, 185) animated: YES];
            }
            
            if([textField isEqual:txtOrderId])
            {
                [scrollview setContentOffset:CGPointMake(0, 105) animated: YES];
            }
 
            
        }
        else //ipad port
        {
            
        }
    
    }
    
    
//     if([textField isEqual:txtMembernumber])
//     {
//         [textField resignFirstResponder];
//         [scrollview setContentOffset:CGPointMake(0, 350) animated: YES];
//         
//     }
    
//}
    
     return YES;
}
  


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == txtMembernumber)
    {
        [txtFirstName becomeFirstResponder];
        return YES;
    }

    if (textField == txtFirstName)
    {
        [txtLastName becomeFirstResponder];
        return YES;
    }
    if (textField == txtLastName)
    {
        [txtDOB becomeFirstResponder];
        return YES;
    }
    [textField resignFirstResponder];
    // scrollview.contentSize=CGSizeMake(scrollview.frame.size.width,scrollview.frame.size.height);
    [scrollview setContentOffset:CGPointMake(0, 0)  animated:YES];
    
    return YES;
    
}

-(void)resizeiphone_land
{
    
    // [self.view addSubview:self.tblview1];
    // [self.view addSubview:self.tblview2];
    
    
    tblimgbg.frame=CGRectMake(228,73,139,75);
    self.tblview1.frame=CGRectMake(228,73,139,75);
    
    tblimgbg2.frame=CGRectMake(19,73,139,75);
    self.tblview2.frame=CGRectMake(19,73,139,75);
    
    scrollview.frame=CGRectMake(18,105,441,120);
    scrollview.contentSize = CGSizeMake(441,210);
    
    btnHome.frame = CGRectMake(9,3,37,35);
    btnLogout.frame = CGRectMake(435,3,38,35);
    btnFindOrder.frame = CGRectMake(147,235,175,27);
    lblHeader.frame = CGRectMake(198,6,152,30);
    lblOrderId.frame = CGRectMake(221,77,49,18);
    
    lblSelectHealth.frame = CGRectMake(13,27,179,24);
    lblSelectSearch.frame = CGRectMake(221,17,122,46);
    
    imgFooter.frame = CGRectMake(5,268,471,42);
    
    imgHeader.frame = CGRectMake(0,0,480,43);
    imgAimLogo.frame = CGRectMake(15,270,75,29);
    imgMobilePortal.frame = CGRectMake(346,274,117,21);
    imgConeArea.frame = CGRectMake(5,42,471,226);
    
    imgBackground.frame = CGRectMake(0,0,480,43);
    
    
    imgSelectHealthLeft.frame = CGRectMake(13,49,18,24);
    txtHealthPlan.frame = CGRectMake(30,49,127,24);
    btnSelectHealthRight.frame = CGRectMake(157,49,29,25);
    
    
    
    imgSelectSearchLeft.frame = CGRectMake(222,49,18,24);
    txtSearchType.frame = CGRectMake(240,49,127,24);
    btnSelectSearchRight.frame = CGRectMake(367,49,29,25);
    
    imgSelectOrderIdLeft.frame = CGRectMake(222,96,18,24);
    txtOrderId.frame = CGRectMake(240,96,140,24);
    imgSelectOrderIdRight.frame = CGRectMake(378,96,18,24);
    
    lblEnterTwoMember.frame=CGRectMake(13,14,231,150);
    imgMembernumberLeft.frame=CGRectMake(13,96,18,24);
    txtMembernumber.frame=CGRectMake(30,96,144,24);
    imgMembernumberRight.frame=CGRectMake(168,96,18,24);
    
    lblEnterCriteriaMemberName.frame=CGRectMake(221,58,210,60);
    imgFirstNameLeft.frame=CGRectMake(222,96,18,24);
    txtFirstName.frame=CGRectMake(240,96,95,24);
    imgFirstNameRight.frame=CGRectMake(325,96,18,24);
    imgLastNameLeft.frame=CGRectMake(351,96,18,24);
    txtLastName.frame=CGRectMake(368,96,60,24);
    imgLastNameRight.frame=CGRectMake(423,96,18,24);
    
    lblDOB.frame=CGRectMake(13,125,118,18);
    imgDOBLeft.frame=CGRectMake(13,145,18,24);
    txtDOB.frame=CGRectMake(30,145,147,24);
    imgDOBRight.frame=CGRectMake(168,145,18,24);
    
    [btnSelectHealthRight setBackgroundImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrderrightcombo.png"] forState:UIControlStateNormal];
    
    [btnSelectSearchRight            setBackgroundImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrderrightcombo.png"] forState:UIControlStateNormal];
    
    [btnFindOrder setBackgroundImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrderfindthisorderbutton.png"] forState:UIControlStateNormal];
    
    [imgHeader setImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrderheadertitlebar.png"]];
    [imgBackground setImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrderbackground.png"]];
    [imgFooter setImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrdercheckfooterbg.png"]];
    [imgConeArea setImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrdermainbg.png"]];
    [imgInnerBg setImage:
     [UIImage imageNamed:@"iphoneLanCheckOrderStatusInnerBg.png"]];
    [self.imgCheckOrder setHidden:YES];
    
    imgInnerBg.frame = CGRectMake(18,51,443,215);
}
-(void)resizeiphone_port
{
    
    //  [self.view addSubview:self.tblview1];
    //[self.view addSubview:self.tblview2];
    
    tblimgbg.frame=CGRectMake(35,164,195,67);
    self.tblview1.frame=CGRectMake(35,164,195,67);
    
    tblimgbg2.frame=CGRectMake(36,98,194,67);
    self.tblview2.frame=CGRectMake(36,98,194,67);
    
    scrollview.frame=CGRectMake(20,122,278,240);
    scrollview.contentSize = CGSizeMake(278,490);
    
    btnHome.frame = CGRectMake(5,4,39,37);
    btnLogout.frame = CGRectMake(275,4,39,37);
    btnFindOrder.frame = CGRectMake(44,362,233,26);
    lblHeader.frame = CGRectMake(0,0,320,43);
    lblOrderId.frame = CGRectMake(18,182,49,18);
    
    lblSelectHealth.frame = CGRectMake(18,41,179,24);
    
    
    lblSelectSearch.frame = CGRectMake(18,107,122,26);
    
    imgFooter.frame = CGRectMake(5,422,311,47);
    
    imgHeader.frame = CGRectMake(0,0,320,43);
    imgAimLogo.frame = CGRectMake(20,426,80,32);
    imgMobilePortal.frame = CGRectMake(168,431,132,22);
    imgConeArea.frame = CGRectMake(5,38,311,385);
    
    imgBackground.frame = CGRectMake(0,0,320,460);
    
    imgSelectHealthLeft.frame = CGRectMake(25,72,18,26);
    txtHealthPlan.frame = CGRectMake(42,72,187,26);
    btnSelectHealthRight.frame = CGRectMake(229,72,29,28);
    imgInnerBg.frame = CGRectMake(20, 51, 281, 363);
    
    
    imgSelectSearchLeft.frame = CGRectMake(25,138,18,26);
    txtSearchType.frame = CGRectMake(42,138,187,26);
    btnSelectSearchRight.frame = CGRectMake(229,138,29,28);
    
    imgSelectOrderIdLeft.frame = CGRectMake(25,204,18,26);
    txtOrderId.frame = CGRectMake(42,204,198,26);
    imgSelectOrderIdRight.frame = CGRectMake(240,204,18,26);

    lblEnterTwoMember.frame=CGRectMake(18, 168, 253, 47);
    imgMembernumberLeft.frame=CGRectMake(25, 204, 18, 26);
    txtMembernumber.frame=CGRectMake(42, 204, 198, 26);
    imgMembernumberRight.frame=CGRectMake(240, 204, 18, 26);
    
    lblEnterCriteriaMemberName.frame=CGRectMake(18, 250, 236, 33);
    imgFirstNameLeft.frame=CGRectMake(23, 280, 18, 26);
    txtFirstName.frame=CGRectMake(40, 280, 113, 26);
    imgFirstNameRight.frame=CGRectMake(147, 280, 18, 26);
    imgLastNameLeft.frame=CGRectMake(179, 280, 18, 26);
    txtLastName.frame=CGRectMake(197, 280, 58, 26);
    imgLastNameRight.frame=CGRectMake(250, 280, 18, 26);
    
    lblDOB.frame=CGRectMake(18, 320, 112, 14);
    imgDOBLeft.frame=CGRectMake(25, 344, 18, 26);
    txtDOB.frame=CGRectMake(42, 344,198, 26);
    imgDOBRight.frame=CGRectMake(240, 344, 18, 26);
    
    [btnSelectHealthRight setBackgroundImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrderrightcombo.png"] forState:UIControlStateNormal];
    
    [btnSelectSearchRight            setBackgroundImage:
     [UIImage imageNamed:@"iPhoneLandCheckOrderrightcombo.png"] forState:UIControlStateNormal];
    
    [btnFindOrder setBackgroundImage:
     [UIImage imageNamed:@"iPhonePortCheckOrderfindthisorderbutton.png"] forState:UIControlStateNormal];
    
    [imgHeader setImage:
     [UIImage imageNamed:@"iPhonePortMainmenuScreenheader-title-bar.png"]];
    [imgBackground setImage:
     [UIImage imageNamed:@"iphonePortcommonbackground.png"]];
    [imgFooter setImage:
     [UIImage imageNamed:@"iPhonePortCheckOrdercheckorderfooterbg.png"]];
    [imgConeArea setImage:
     [UIImage imageNamed:@"iPhonePortCheckOrdercheckorderbg.png"]];
    [imgInnerBg setImage:
     [UIImage imageNamed:@"iPhonePortCheckOrderconbg.png"]];
    [tblimgbg setImage:
     [UIImage imageNamed:@"iPhonePortCheckOrdertexboxcombobg.png"]];
    [tblimgbg2 setImage:
     [UIImage imageNamed:@"iPhonePortCheckOrdertexboxcombobg.png"]];
    
    [self.imgCheckOrder setHidden:NO];
}
-(void)resizeipad_land
{
    
    // [self.view addSubview:self.tblview1];
    // [self.view addSubview:self.tblview2];
    
    tblimgbg.frame=CGRectMake(546,99,236,90);
    self.tblview1.frame=CGRectMake(546,99,236,87);
    
    tblimgbg2.frame=CGRectMake(39,99,241,120);
    self.tblview2.frame=CGRectMake(39,99,241,120);
    
    scrollview.frame=CGRectMake(36,283,933,293);
    scrollview.contentSize = CGSizeMake(933,400);
    
    btnHome.frame = CGRectMake(20,7,79,74);
    btnLogout.frame = CGRectMake(920,7,76,71);
    btnFindOrder.frame = CGRectMake(343,584,319,52);
    lblHeader.frame = CGRectMake(383,24,239,40);
    lblOrderId.frame = CGRectMake(19,119,109,22);
    
    lblSelectHealth.frame = CGRectMake(19,21,246,36);
    lblSelectSearch.frame = CGRectMake(522,21,246,36);
    
    imgFooter.frame = CGRectMake(3,661,999,88);
    
    imgHeader.frame = CGRectMake(0,0,1024,87);
    imgAimLogo.frame = CGRectMake(30,669,173,69);
    imgMobilePortal.frame = CGRectMake(705,681,279,45);
    imgInnerBg.frame = CGRectMake(36,127,933,513);
    imgConeArea.frame = CGRectMake(3,89,999,572);
    
    imgBackground.frame = CGRectMake(0,0,1024,768);
    
    
    imgSelectHealthLeft.frame = CGRectMake(19,50,40,52);
    txtHealthPlan.frame = CGRectMake(58,50,220,52);
    btnSelectHealthRight.frame = CGRectMake(278,51,58,52);
    
    
    
    imgSelectSearchLeft.frame = CGRectMake(522,49,40,52);
    txtSearchType.frame = CGRectMake(562,49,220,52);
    btnSelectSearchRight.frame = CGRectMake(780,50,58,52);
    
    imgSelectOrderIdLeft.frame = CGRectMake(19,141,40,55);
    txtOrderId.frame = CGRectMake(58,141,242,55);
    imgSelectOrderIdRight.frame = CGRectMake(298,141,40,55);
    
    lblEnterTwoMember.frame=CGRectMake(19,119,308,22);
    imgMembernumberLeft.frame=CGRectMake(19,141,40,55);
    txtMembernumber.frame=CGRectMake(58,141,242,55);
    imgMembernumberRight.frame=CGRectMake(298,141,40,55);
    
    lblEnterCriteriaMemberName.frame=CGRectMake(522,109,276,44);
    imgFirstNameLeft.frame=CGRectMake(522,141,40,55);
    txtFirstName.frame=CGRectMake(562,141,112,55);
    imgFirstNameRight.frame=CGRectMake(674,141,40,55);
    imgLastNameLeft.frame=CGRectMake(724,141,40,55);
    txtLastName.frame=CGRectMake(761,141,112,55);
    imgLastNameRight.frame=CGRectMake(872,141,40,55);
    
    lblDOB.frame=CGRectMake(522,220,170,19);
    imgDOBLeft.frame=CGRectMake(522	,238,40,55);
    txtDOB.frame=CGRectMake(562,238,242,55);
    imgDOBRight.frame=CGRectMake(802,238,40,55);
    
    
    [btnSelectHealthRight setBackgroundImage:
     [UIImage imageNamed:@"iPadLandCheckOrderrightcombo.png"] forState:UIControlStateNormal];
    
    [btnSelectSearchRight            setBackgroundImage:
     [UIImage imageNamed:@"iPadLandCheckOrderrightcombo.png"] forState:UIControlStateNormal];
    
    [btnFindOrder setBackgroundImage:
     [UIImage imageNamed:@"iPadPortCheckOrderfindthisorderbutton.png"] forState:UIControlStateNormal];
    
    [imgHeader setImage:
     [UIImage imageNamed:@"iPadLandMainmenuScreenheader-title-bar.png"]];
    [imgBackground setImage:
     [UIImage imageNamed:@"ipadLandloginscreenbackgroundimg.png"]];
    [imgFooter setImage:
     [UIImage imageNamed:@"iPadLandCheckOrdercheckorderfooterbg.png"]];
    [imgConeArea setImage:
     [UIImage imageNamed:@"iPadLandCheckOrderconareabg.png"]];
    [imgInnerBg setImage:
     [UIImage imageNamed:@"iPadLandCheckOrderinnerbg.png"]];
    
    [tblimgbg setImage:
     [UIImage imageNamed:@"iPadLandCheckOrderlandcombodropdown.png"]];
    [tblimgbg2 setImage:
     [UIImage imageNamed:@"iPadLandCheckOrderlandcombodropdown.png"]];
    
    [self.imgCheckOrder setHidden:YES];
    
    
}
-(void)resizeipad_port;
{
    
    //[self.view addSubview:self.tblview1];
    //[self.view addSubview:self.tblview2];
    
    tblimgbg.frame=CGRectMake(50,194,467,96);
    self.tblview1.frame=CGRectMake(50,194,467,95);
    
    tblimgbg2.frame=CGRectMake(50,110,467,82);
    self.tblview2.frame=CGRectMake(50,110,467,82);
    
    scrollview.frame=CGRectMake(69,293,607,432);
    scrollview.contentSize = CGSizeMake(607,432);
    
    btnHome.frame = CGRectMake(20,5,79,74);
    btnLogout.frame = CGRectMake(680,6,76,71);
    btnFindOrder.frame = CGRectMake(110,776,542,56);
    lblHeader.frame = CGRectMake(265,20,239,40);
    lblOrderId.frame = CGRectMake(40,198,109,22);
    
    lblSelectHealth.frame = CGRectMake(39,28,246,36);
    lblSelectSearch.frame = CGRectMake(39,116,170,26);
    
    imgFooter.frame = CGRectMake(7,907,755,92);
    
    imgHeader.frame = CGRectMake(0,-6,768,91);
    imgAimLogo.frame = CGRectMake(34,915,173,69);
    imgMobilePortal.frame = CGRectMake(455,927,279,45);
    imgInnerBg.frame = CGRectMake(62,136,644,740);
    imgConeArea.frame = CGRectMake(12,90,744,817);
    
    imgBackground.frame = CGRectMake(0,0,768,1004);
    
    
    imgSelectHealthLeft.frame = CGRectMake(30,58,40,55);
    txtHealthPlan.frame = CGRectMake(70,58,444,55);
    btnSelectHealthRight.frame = CGRectMake(514,59,58,55);
    
    
    
    imgSelectSearchLeft.frame = CGRectMake(30,142,40,55);
    txtSearchType.frame = CGRectMake(70,142,444,55);
    btnSelectSearchRight.frame = CGRectMake(514,143,58,55);
    
    imgSelectOrderIdLeft.frame = CGRectMake(30,221,40,55);
    txtOrderId.frame = CGRectMake(69,221,463,55);
    imgSelectOrderIdRight.frame = CGRectMake(532,221,40,55);
    
    lblEnterTwoMember.frame=CGRectMake(39,195,480,31);
    imgMembernumberLeft.frame=CGRectMake(30,221,40,55);
    txtMembernumber.frame=CGRectMake(70,221,463,55);
    imgMembernumberRight.frame=CGRectMake(532,221,40,55);
    
    lblEnterCriteriaMemberName.frame=CGRectMake(39,277,386,24);
    imgFirstNameLeft.frame=CGRectMake(30,300,40,55);
    txtFirstName.frame=CGRectMake(70,300,179,55);
    imgFirstNameRight.frame=CGRectMake(246,300,40,55);
    imgLastNameLeft.frame=CGRectMake(310,300,40,55);
    txtLastName.frame=CGRectMake(349,300,187,55);
    imgLastNameRight.frame=CGRectMake(533,300,40,55);
    
    lblDOB.frame=CGRectMake(39,361,176,19);
    imgDOBLeft.frame=CGRectMake(30,380,40,55);
    txtDOB.frame=CGRectMake(69,380,463,55);
    imgDOBRight.frame=CGRectMake(532,380,40,55);
    
    
    
    [btnSelectHealthRight setBackgroundImage:
     [UIImage imageNamed:@"iPadLandCheckOrderrightcombo.png"] forState:UIControlStateNormal];
    
    [btnSelectSearchRight            setBackgroundImage:
     [UIImage imageNamed:@"iPadLandCheckOrderrightcombo.png"] forState:UIControlStateNormal];
    
    [btnFindOrder setBackgroundImage:
     [UIImage imageNamed:@"iPadPortCheckOrderfindthisorderbutton.png"] forState:UIControlStateNormal];
    
    [imgHeader setImage:
     [UIImage imageNamed:@"iPadPortMainmenuScreenheader-bar.png"]];
    [imgBackground setImage:
     [UIImage imageNamed:@"ipadportloginscreenbackgroundimg.png"]];
    [imgFooter setImage:
     [UIImage imageNamed:@"iPadPortCheckOrderfooterlogobg.png"]];
    [imgConeArea setImage:
     [UIImage imageNamed:@"iPadPortCheckOrderland conareabg.png"]];
    [imgInnerBg setImage:
     [UIImage imageNamed:@"iPadPortCheckOrderinnerbg.png"]];
    [tblimgbg setImage:
     [UIImage imageNamed:@"iPadPortCheckOrderlandcombodropdown.png"]];
    [tblimgbg2 setImage:
     [UIImage imageNamed:@"iPadPortCheckOrderlandcombodropdown.png"]];
    [self.imgCheckOrder setHidden:NO];
    
    
    
    
}

-(IBAction)showselectmembertype:(id)sender
{
    
    if (tblview2.isHidden == TRUE)
    {
        [self.viewMemberId setHidden:NO];
        
        [self.tblview1 setHidden:YES];
        [self.tblimgbg setHidden:YES];
        [self.tblview2 setHidden:NO];
        [self.tblimgbg2 setHidden:NO];
        
        
    }
    else
    {
        
        [self.viewMemberId setHidden:NO];
        
        [self.tblview1 setHidden:YES];
        [self.tblimgbg setHidden:YES];
        [self.tblview2 setHidden:YES];
        [self.tblimgbg2 setHidden:YES];
        
        
    }
    
}

-(IBAction)showTable:(id)sender
{
    
    if(tblview1.isHidden==TRUE){
        [self.viewMemberId setHidden:NO];
        
        [self.tblview1 setHidden:NO];
        [self.tblimgbg setHidden:NO];
        [self.tblview2 setHidden:YES];
        [self.tblimgbg2 setHidden:YES];
    }
    else {
        [self.viewMemberId setHidden:NO];
        
        [self.tblview1 setHidden:YES];
        [self.tblimgbg setHidden:YES];
        [self.tblview2 setHidden:YES];
        [self.tblimgbg2 setHidden:YES];
    }
}

- (void) dealloc{
    [txtHealthPlan release];
    [txtSearchType release];
    [txtOrderId release];
    [txtMembernumber release];
    [txtFirstName release];
    [txtLastName release];
    
    [txtDOB release];
    [lblSelectHealth release];
    [lblSelectSearch release];
    [lblSearchType release];
    [lblOrderId release];
    [lblHeader release];
    
    [lblEnterTwoMember release];
    [lblEnterCriteriaMemberName release];
    [lblDOB release];
    [imgAimLogo release];
    [imgBackground release];
    [imgCheckOrder release];
    [imgConeArea release];
    [imgDOBLeft release];
    [imgDOBRight release];
    [imgFirstNameLeft release];
    [imgFirstNameRight release];
    [imgFooter release];
    [imgHeader release];
    [imgInnerBg release];
    [imgLastNameLeft release];
    [imgLastNameRight release];
    [imgMembernumberLeft release];
    [imgMembernumberRight release];
    [imgMobilePortal release];
    [imgSelectHealthLeft release];
    [imgSelectOrderIdLeft release];
    [imgSelectOrderIdRight release];
    [imgSelectSearchLeft release];
    [btnFindOrder release];
    [btnHome release];
    [btnLogout release];
    [btnSelectHealthRight release];
    [btnSelectSearchRight release];
    
    [tblimgbg release];
    [tblimgbg2 release];
    [tblview1 release];
    [tblview2 release];
    [super dealloc];
    
}

@end
