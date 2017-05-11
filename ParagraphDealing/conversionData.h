//
//  conversionData.h
//  TextFeature
//
//  Created by 汤义 on 17/5/10.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface conversionData : NSObject
+ (NSString *)conversionInt:(int)data;
+ (int)conversionStr:(NSString *)str;
@end
