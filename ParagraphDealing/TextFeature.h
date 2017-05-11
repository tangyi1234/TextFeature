//
//  TextFeature.h
//  TextFeature
//
//  Created by 汤义 on 17/5/9.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface TextFeature : NSObject
/*
 textFeatureStr:    整段文字，要特殊处理的文字要用空格代替。 如：今天是个好天气，有 度。多少度使用空格代替的。
 dataArr:           要处理的数组集。上面的多少度就可以放到这个数组集中。如：NSArray *arr = [NSArray arrayWithObjects:@"20",nil];
 dataColor:         要特殊处理文字的颜色。
 dataTextFont:      要特殊处理文字的大小。
 **/
+ (NSMutableAttributedString *)textFeatureStr:(NSString *)str dataArr:(NSArray *)arr dataColor:(UIColor *)color dataTextFont:(UIFont *)font;
@end
