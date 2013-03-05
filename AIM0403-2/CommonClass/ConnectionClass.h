//  Copyright (c) 2013 by VeriFone, Inc.
//  All Rights Reserved.
//  THIS FILE CONTAINS PROPRIETARY AND CONFIDENTIAL INFORMATION //  AND REMAINS THE UNPUBLISHED PROPERTY OF VERIFONE, INC.
//  Use, disclosure, or reproduction is prohibited //  without prior written approval from VeriFone, Inc.

#import <Foundation/Foundation.h>
#import "NSData+Additions.h"

@protocol condelegate <NSObject>
-(void)pushcallsuccess:(NSData *)data:(NSInteger)rescode;
-(void)pushcallfailed:(NSString *)str_Failure;
@end

@interface ConnectionClass : NSObject{
    id<condelegate> conn_Delegate;
    NSMutableData *response_Data;
    NSInteger responsecode;
    
}


@property(nonatomic,retain) id<condelegate> conn_Delegate;




-(void)NSURLConnection:(NSString *)str_Url:(NSData *)data;
-(void)NSURLConnection_get:(NSString *)str_Url:(NSData *)data:(NSString *)strcode;
-(void)NSURLConnection_login:(NSString *)str_Url:(NSData *)data;
-(void)NSURLConnection_phone:(NSString *)str_Url:(NSString *)str_accesstoken:(NSString *)str_phone;
+(NSString *) urlencode: (NSString *) str;
-(void)NSURLConnection_get:(NSString *)str:(NSString *)str_accessToken;
+ (BOOL)connected;
@end
