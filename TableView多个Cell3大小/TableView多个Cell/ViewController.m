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
#import "Masonry.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate>

@property (strong, nonatomic) UIScrollView *scrollView;
@property (nonatomic, strong) UIView *containerView;
@property (strong, nonatomic) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.scrollView];
    [self.scrollView addSubview:self.containerView];
    [self.containerView addSubview:self.tableView];
    
    
    [self layoutViews];
}

- (void)layoutViews {
    
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.edges.equalTo(self.view);
        
    }];
    
    [self.containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.edges.equalTo(self.scrollView);
        make.width.equalTo(self.scrollView);
        
    }];
    
}

- (void)viewDidLayoutSubviews {
    
    NSLog(@".................:222 %.2f", self.tableView.contentSize.height);
    
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.top.equalTo(self.containerView);
        make.height.equalTo(@(self.tableView.contentSize.height));
    }];
    
    [self.containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.bottom.equalTo(self.tableView.mas_bottom);
        
    }];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 55;
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
            
        }
            
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 50;
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    if ([scrollView isMemberOfClass:[UITableView class]]) {
        NSLog(@"tableView");
    } else {
        
        NSLog(@"scrollView");
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -Getter
- (UIScrollView *)scrollView {
    
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc]init];
        _scrollView.backgroundColor = [UIColor blueColor];
        _scrollView.delegate = self;
    }
    return _scrollView;
}

- (UIView *)containerView {
    
    if (!_containerView) {
        _containerView = [[UIView alloc]init];
        _containerView.backgroundColor = [UIColor blackColor];
    }
    return _containerView;
    
}

- (UITableView *)tableView {
    
    if (!_tableView) {
        _tableView = [[UITableView alloc]init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
    
}

@end
