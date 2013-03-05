//  Copyright (c) 2013 by VeriFone, Inc.
//  All Rights Reserved.
//  THIS FILE CONTAINS PROPRIETARY AND CONFIDENTIAL INFORMATION //  AND REMAINS THE UNPUBLISHED PROPERTY OF VERIFONE, INC.
//  Use, disclosure, or reproduction is prohibited //  without prior written approval from VeriFone, Inc.

#import "ConnectionClass.h"

@implementation ConnectionClass
@synthesize conn_Delegate;


static NSMutableDictionary *sSiteToCertificateMap;


//SAMPLE USE IT
-(void)NSURLConnection_login:(NSString *)str_Url:(NSData *)data{
    @try{
      NSMutableURLRequest *request= [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:str_Url]  cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:180];
   
    NSString *str_authdata=[data base64Encoding];
   // NSString *str_array=[NSString stringWithFormat:@"grant_type=%@",@"client_credentials"];
        

        NSString *requestString = [NSString stringWithFormat:@"{'auth':'%@'}",str_authdata];
        NSData *jsonData=[requestString dataUsingEncoding:NSUTF8StringEncoding];
        
        //@"{'auth': 'cGFyaW1hbGEjcGFyaW1hbGE='}"
   
    [request setHTTPMethod:@"POST"];
    [request setValue:@"*/*" forHTTPHeaderField:@"Accept"];
    //[request setValue:[NSString stringWithFormat:@"auth:%@",] forHTTPHeaderField:@"auth"];
    [request setValue:@"no-cache" forHTTPHeaderField:@"Cache-Control"];
    //[request setValue:@"application/json, text/javascript, */*; q=0.01" forHTTPHeaderField:@"Accept"];
    [request setValue:@"application/json; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:jsonData];
    
        
    NSError *err=nil;
    NSURLConnection *conn=[[NSURLConnection alloc] initWithRequest:request delegate:self];
    if (conn) {
        response_Data=[[NSMutableData data] retain];
    } else {
        [conn_Delegate pushcallfailed:[err localizedDescription]];
    }
    
    [request release];
}
@catch (NSException *e) {
    NSLog(@"Exception %@", e);
}

}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [response_Data appendData:data];
}
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
   // NSString *Str_response=[[NSString alloc] initWithData:response_Data encoding:NSUTF8StringEncoding];
    //NSLog(@"%@",Str_response);
    [conn_Delegate pushcallsuccess:response_Data:responsecode];
   
}
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    [connection release];
	[response_Data release];
    [conn_Delegate pushcallfailed:[error localizedDescription]];
}

-(void)pushcallsuccess:(NSData *)data:(NSInteger)rescode{
    NSString *Str_response=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"%@",Str_response);
}
-(void)pushcallfailed:(NSString *)str_Failure{
    
}

+(NSString *) urlencode: (NSString *) str {
    NSString * encodedString = (NSString *)CFURLCreateStringByAddingPercentEscapes(NULL,(CFStringRef)str,
                                                                                            NULL,
                                                                                            (CFStringRef)@"\"%&'[]|<>!@#$^*()~`,._-+?/€£¥•:;{}=",
                                                                                            kCFStringEncodingASCII);
    
    
    
    return encodedString;
}
#pragma mark SSLConnectionAuthentication

- (BOOL)connection:(NSURLConnection *)connection canAuthenticateAgainstProtectionSpace:(NSURLProtectionSpace *)protectionSpace
{
	//	assert(connection == self.theConnection);
    assert(protectionSpace != nil);
	
    if([protectionSpace.authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust])
    {
        NSLog(@"SERVER TRUST AUTH");
		
        return YES;
    }
    if([protectionSpace.authenticationMethod isEqualToString:NSURLAuthenticationMethodNTLM])
    {
		
        NSLog(@"Can Auth Secure Requestes!");
        return YES;
    }
    NSLog(@"NO AUTH");
    return NO;
}


-(void)connection:(NSURLConnection *)connection
didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
	//    NSLog(@"didReceiveAuthenticationChallenge %@ %zd", [[challenge protectionSpace] authenticationMethod], (ssize_t) [challenge previousFailureCount]);
	
	if ([challenge.protectionSpace.authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust]){
		[self _evaluateAskPerUntrustedSiteTrust:challenge];
		[challenge.sender useCredential:[NSURLCredential credentialForTrust:challenge.protectionSpace.serverTrust] forAuthenticationChallenge:challenge];
	}else 	if ([[challenge protectionSpace] authenticationMethod] == NSURLAuthenticationMethodNTLM){
        /*    This is very, very important to check.  Depending on how your security policies are setup, you could lock your user out of his or her account by trying to use the wrong credentials too many times in a row.    */
        if ([challenge previousFailureCount] > 5)
        {
            [[challenge sender] cancelAuthenticationChallenge:challenge];
        }
        else
        {
			[challenge.sender useCredential:[NSURLCredential credentialForTrust:challenge.protectionSpace.serverTrust] forAuthenticationChallenge:challenge];
			//			[[challenge sender]  useCredential:[NSURLCredential credentialWithUser:appDelegate.strusername password:appDelegate.strpassword persistence:NSURLCredentialPersistenceForSession] forAuthenticationChallenge:challenge];
			if([challenge previousFailureCount]>5){
				[[challenge sender] cancelAuthenticationChallenge:challenge];
			}
        }
    }
    else
    {
        //    Do whatever you want here, for educational purposes, I'm just going to cancel the challenge
        [[challenge sender] cancelAuthenticationChallenge:challenge];
    }
	
	
	
}

static SecCertificateRef SecTrustGetLeafCertificate(SecTrustRef trust)
// Returns the leaf certificate from a SecTrust object (that is always the
// certificate at index 0).
{
    SecCertificateRef   result;
    
    assert(trust != NULL);
    
    if (SecTrustGetCertificateCount(trust) > 0) {
        result = SecTrustGetCertificateAtIndex(trust, 0);
        assert(result != NULL);
    } else {
        result = NULL;
    }
    return result;
}

- (void)_serverTrustResolvedWithSuccess:(BOOL)success rememberSuccess:(BOOL)rememberSuccess:(NSURLAuthenticationChallenge *)challenge
// Some common code that's called in a variety of places to finally resolve the
// challenge.  Also, if rememberSuccess is set, we add an entry for this challenge
// into sSiteToCertificateMap so that future challenges can be automatically resolved.
{
    NSURLCredential *   credential;
    
    // ! success && rememberSuccess is a weird combination, but we allow is so
    // that our clients don't have to jump through too many hoops.
    
    // On succes, create a credential with which to resolve the challenge.
	
    credential = nil;
    if (success) {
        NSURLProtectionSpace *  protectionSpace;
        SecTrustRef             trust;
        NSString *              host;
        SecCertificateRef       serverCert;
		
        protectionSpace = [challenge protectionSpace];
        assert(protectionSpace != nil);
		trust = [protectionSpace serverTrust];
        assert(trust != NULL);
		credential = [NSURLCredential credentialForTrust:trust];
        assert(credential != nil);
        
        // If we've been asked to remember the response, do so now.
        
        if (rememberSuccess) {
            assert(sSiteToCertificateMap != nil);
			host = [[challenge protectionSpace] host];
            assert(host != nil);
            if ( [sSiteToCertificateMap objectForKey:host] == nil ) {
				
                serverCert = SecTrustGetLeafCertificate(trust);
                if (serverCert != NULL) {
                    [sSiteToCertificateMap setObject:(id)serverCert forKey:host];
                }
            }
			
        }
    }
	
}

- (void)_evaluateAskPerUntrustedSiteTrust:(NSURLAuthenticationChallenge *)challenge
// Implements the kDebugOptionsServerValidationAskPerUntrustedSite server trust
// validation option.
{
    OSStatus                err;
    NSURLProtectionSpace *  protectionSpace;
    SecTrustRef             trust;
    BOOL                    trusted;
    SecTrustResultType      trustResult;
    SecCertificateRef       previousCert;
	NSString *              host;
	SecCertificateRef       serverCert;
	
    protectionSpace = [challenge protectionSpace];
    assert(protectionSpace != nil);
    
    trust = [protectionSpace serverTrust];
    assert(trust != NULL);
    
    // Evaluate the trust the standard way.
    
    err = SecTrustEvaluate(trust, &trustResult);
    trusted = (err == noErr) && ((trustResult == kSecTrustResultProceed) || (trustResult == kSecTrustResultUnspecified));
    
    // If the standard policy says that it's trusted, allow it right now.
    // Otherwise do our custom magic.
    
    if (trusted) {
		//        [self _serverTrustResolvedWithSuccess:YES rememberSuccess:NO :challenge];
    } else {
        if (sSiteToCertificateMap == nil) {
            sSiteToCertificateMap = [[NSMutableDictionary alloc] init];
            assert(sSiteToCertificateMap != nil);
        }
		
        // Check to see if we've previously seen this server.
        
        previousCert = (SecCertificateRef) [sSiteToCertificateMap objectForKey:[protectionSpace host]];
        assert( (previousCert == NULL) || (CFGetTypeID(previousCert) == SecCertificateGetTypeID()) );
        
        if (previousCert == NULL) {
            // We've not seen this server before.  Ask the user.
			//			NSURLCredential *credential=[NSURLCredential credentialWithUser:txtusername.text password:txtpassword.text persistence:NSURLCredentialPersistenceForSession];
			//			[[challenge sender] useCredential:credential forAuthenticationChallenge:challenge];
			host = [[challenge protectionSpace] host];
            assert(host != nil);
            if ( [sSiteToCertificateMap objectForKey:host] == nil ) {
				
                serverCert = SecTrustGetLeafCertificate(trust);
                if (serverCert != NULL) {
                    [sSiteToCertificateMap setObject:(id)serverCert forKey:host];
                }
            }
            BOOL                success;
            SecCertificateRef   serverCert;
            // We've seen this server before.  Check to see whether the
            // certificate from the connection matches the certificate
            // we saw last time.  If so, allow the connection.  If not,
            // deny the connection.
            success = NO;
            serverCert = SecTrustGetLeafCertificate(trust);
            if (serverCert != NULL) {
                CFDataRef       serverCertData;
                serverCertData   = SecCertificateCopyData(serverCert);
                assert(serverCertData   != NULL);
                success = YES;
                CFRelease(serverCertData);
            }
        }
    }
}



- (NSCachedURLResponse *)connection:(NSURLConnection *)connection willCacheResponse:(NSCachedURLResponse *)cachedResponse{
	return nil;
}

- (BOOL)connectionShouldUseCredentialStorage:(NSURLConnection *)connection{
	return NO;
}

- (void)connection:(NSURLConnection *)connection didCancelAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge{
	[[challenge sender] cancelAuthenticationChallenge:challenge];
}



@end
