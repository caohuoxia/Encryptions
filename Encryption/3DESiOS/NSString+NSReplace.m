//
//  NSString+NSReplace.m
//  DES
//
//  Created by Toni on 12-12-27.
//  Copyright (c) 2012年 sinofreely. All rights reserved.
//

#import "NSString+NSReplace.h"

@implementation NSString (NSReplace)
//在srcStr字符串中查找sStr字符串，并替换成destStr字符串
+ (NSString *)sourceStr:(NSString *)destStr replaceStr:(NSString *)sStr fromSrcStr:(NSString *)srcStr{
	NSRange range;
	
	NSMutableString *str = [NSMutableString stringWithString:srcStr];
	
	while (1) {
		range = [str rangeOfString:sStr];
		if (range.length) {
			[str replaceCharactersInRange:range withString:destStr];
		}else{
			break;
		}
		
	}
	return str;
}

//去掉字符串中的空格
+ (NSString *)trim:(NSString *)textStr{
	if (textStr == nil ) {
        return nil;
    }
    
	NSMutableString *str = [NSMutableString stringWithString:textStr];
	NSRange range;
	while (1) {
		range = [str rangeOfString:@" "];
		if (!range.location) {
			[str deleteCharactersInRange:range];
		}else{
			break;
		}
	}
	
	return (NSString *)str;
}
@end
