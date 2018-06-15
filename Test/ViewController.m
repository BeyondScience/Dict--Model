//
//  ViewController.m
//  Test
//
//  Created by Li Peixin on 2018/6/15.
//  Copyright © 2018年 Li Peixin. All rights reserved.
//

#import "ViewController.h"
#import "ModelList.h"
#import "ModelLabel.h"

@interface ViewController () //<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tabView;
@property (nonatomic, strong) NSMutableArray <ModelList *>*arrData;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.arrData = [NSMutableArray array];
    NSDictionary *dictMain = [self fileWithJson];
    NSArray *arr = dictMain[@"data"][@"templist"];
    for (NSDictionary *dict in arr) {
        [self.arrData addObject:[ModelList modelWithDict:dict]];
    }
    
    for (int i = 0; i < self.arrData.count; i++) {
        ModelList *list = self.arrData[i];
        NSArray *arr = list.arrLabel;
        for (ModelLabel *label in arr) {
            NSLog(@"label === %@--%@--%@",label.content, label.fontcolor, label.bgcolor);
        }
    }
    
//    [self loadTableView];
}

-(void)loadTableView{
    self.tabView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
//    self.tabView.delegate = self;
//    self.tabView.dataSource = self;
    self.tabView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.tabView];
}

#pragma mark -------------UITableViewDelegate && UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arrData.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ModelList *list = self.arrData[indexPath.row];
    NSArray *arr = list.arrLabel;
    for (ModelLabel *label in arr) {
        NSLog(@"label === %@--%@--%@",label.content, label.fontcolor, label.bgcolor);
    }
    NSLog(@"");
    
    return [UITableViewCell new];
}

#pragma mark ---Tool
-(NSDictionary *)fileWithJson{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"content" ofType:@"json"];
//    NSDictionary *dictData = [NSDictionary dictionaryWithContentsOfFile:filePath];
    NSData *data = [NSData dataWithContentsOfFile:filePath];

    NSDictionary *dictData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    return dictData;
}


@end
