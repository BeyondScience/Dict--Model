//
//  ModelList.h
//  Test
//
//  Created by Li Peixin on 2018/6/15.
//  Copyright © 2018年 Li Peixin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModelLabel.h"

@interface ModelList : NSObject

@property (nonatomic, copy) NSString *time_waitpost;
@property (nonatomic, copy) NSString *idStr;
@property (nonatomic, copy) NSString *bizname;
@property (nonatomic, copy) NSString *bizaddress;
@property (nonatomic, copy) NSString *receiver_name;
@property (nonatomic, copy) NSString *receiver_address;
@property (nonatomic, copy) NSArray <ModelLabel *>*arrLabel;

+(instancetype)modelWithDict:(NSDictionary *)dict;


@end
