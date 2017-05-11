//
//  ArraySpecific.m
//  TextFeature
//
//  Created by 汤义 on 17/5/9.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import "ArraySpecific.h"
#import "conversionData.h"
@implementation ArraySpecific
+ (NSMutableArray *)TextLocation:(NSArray *)arr strData:(NSArray *)dataArr {
    NSMutableArray *arrCount = [NSMutableArray array];
    if (dataArr.count == arr.count - 1) {
        int data = 0;
        for (int i = 0; i < arr.count - 1 && i < dataArr.count; i++) {
            NSString *str = arr[i];
            if (i == 0) {
                data += (int)str.length;
            }else {
                NSString *dataStr = dataArr[i - 1];
                data += ((int)str.length + (int)dataStr.length);
            }
            NSString *strData = [conversionData conversionInt:data];
            [arrCount addObject:strData];
        }
    }
    return arrCount;
}

+ (NSMutableArray *)DealWithArray:(NSArray *)arr {
    NSMutableArray *countArr = [NSMutableArray array];
    for (int i = 0; i < arr.count; i ++) {
        NSString *str = arr[i];
        int lg = (int)str.length;
        NSString *strData = [conversionData conversionInt:lg];
        [countArr addObject:strData];
    }
    return countArr;
}
@end
