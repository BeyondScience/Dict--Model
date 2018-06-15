//
//  ModelLabel.m
//  Test
//
//  Created by Li Peixin on 2018/6/15.
//  Copyright © 2018年 Li Peixin. All rights reserved.
//

#import "ModelLabel.h"

@implementation ModelLabel

+(instancetype)modelWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}

-(instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}

@end
