//
//  ModelList.m
//  Test
//
//  Created by Li Peixin on 2018/6/15.
//  Copyright © 2018年 Li Peixin. All rights reserved.
//

#import "ModelList.h"

@implementation ModelList

+(instancetype)modelWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}

-(instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        NSMutableArray *arr = [NSMutableArray array];
        //取出Labels数组里面的数据转换成ModelLabel模型
        NSArray *arrTemp = dict[@"Labels"];
        for (NSDictionary *dictTemp in arrTemp) {
            [arr addObject:[ModelLabel modelWithDict:dictTemp]];
        }
        self.arrLabel = [arr copy];
    }
    return self;
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    if([key isEqualToString:@"id"]){
        self.idStr = [value intValue];
    }
}

@end
