//
//  MyCell.h
//  EditTableView
//
//  Created by Qianrun on 16/9/26.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell : UITableViewCell

@property (nonatomic, strong) UIButton * selectButton;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
