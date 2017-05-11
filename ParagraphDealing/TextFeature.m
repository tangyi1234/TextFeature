//
//  TextFeature.m
//  TextFeature
//
//  Created by 汤义 on 17/5/9.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import "TextFeature.h"
#import "ArraySpecific.h"
#import "conversionData.h"

@implementation TextFeature
+ (NSMutableAttributedString *)textFeatureStr:(NSString *)str dataArr:(NSArray *)arr dataColor:(UIColor *)color dataTextFont:(UIFont *)font{
    NSArray *aArray = [str componentsSeparatedByString:@" "];
//    NSLog(@"有多少组:%@ %lu",aArray[0],(unsigned long)aArray.count);
    NSArray *returnArr = [ArraySpecific TextLocation:aArray strData:arr];
    NSArray *dataLgArr = [ArraySpecific DealWithArray:arr];
//    NSLog(@"这是什么回事数据:%lu",(unsigned long)returnArr.count);
    NSMutableAttributedString *mutableStr = [[NSMutableAttributedString alloc] initWithString:str];
    if (returnArr.count == dataLgArr.count) {
        for (int i = 0; i < returnArr.count; i ++) {
            int d = [conversionData conversionStr:dataLgArr[i]];
            int s = [conversionData conversionStr:returnArr[i]];
            NSString *dataStr = [NSString stringWithFormat:@"%@",arr[i]];
            [mutableStr replaceCharactersInRange:NSMakeRange(s,1) withString:dataStr];
            [mutableStr setAttributes:@{NSForegroundColorAttributeName:color , NSFontAttributeName:font} range:NSMakeRange(s,d)];
//            NSLog(@"在什么位置:%@",returnArr[i]);
        }
    }else {
        NSLog(@"出错了，要更改的文字和文字集不符");
    }
    return mutableStr;
}
@end
