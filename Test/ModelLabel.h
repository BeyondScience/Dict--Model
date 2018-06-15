//
//  ModelLabel.h
//  Test
//
//  Created by Li Peixin on 2018/6/15.
//  Copyright © 2018年 Li Peixin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ModelLabel : NSObject

@property (nonatomic, copy) NSString *content;
@property (nonatomic, copy) NSString *fontcolor;
@property (nonatomic, copy) NSString *bgcolor;

+(instancetype)modelWithDict:(NSDictionary *)dict;

@end
