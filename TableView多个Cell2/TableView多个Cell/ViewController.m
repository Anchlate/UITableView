//
//  ViewController.m
//  TableView多个Cell
//
//  Created by Qianrun on 16/10/25.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import "ViewController.h"
#import "ANCell1.h"
#import "ANCell2.h"
#import "ANCell3.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    switch (indexPath.row % 3) {
        case 0: {
            
            return [ANCell1 cellCreateFromNibWithTableView:tableView];
        }
        
        case 1: {
            
            return [ANCell2 cellCreateFromNibWithTableView:tableView];
        }
            
        default: {
            
            return [ANCell3 cellCreateFromNibWithTableView:tableView];
            
            return nil;
        }
            
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 110;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
