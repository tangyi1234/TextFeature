//
//  conversionData.m
//  TextFeature
//
//  Created by 汤义 on 17/5/10.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import "conversionData.h"

@implementation conversionData
+ (NSString *)conversionInt:(int)data {
    return [NSString stringWithFormat:@"%d",data];
}

+ (int)conversionStr:(NSString *)str {
   return [str  intValue];
}
@end
