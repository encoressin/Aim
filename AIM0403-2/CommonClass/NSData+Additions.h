//  Copyright (c) 2013 by VeriFone, Inc.
//  All Rights Reserved.
//  THIS FILE CONTAINS PROPRIETARY AND CONFIDENTIAL INFORMATION //  AND REMAINS THE UNPUBLISHED PROPERTY OF VERIFONE, INC.
//  Use, disclosure, or reproduction is prohibited //  without prior written approval from VeriFone, Inc.

@interface NSData (MBBase64)

+ (id)dataWithBase64EncodedString:(NSString *)string;     //  Padding '=' characters are optional. Whitespace is ignored.
- (NSString *)base64Encoding;

@end

