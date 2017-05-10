//
//  MyCell.m
//  EditTableView
//
//  Created by Qianrun on 16/9/26.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import "MyCell.h"

@interface MyCell ()

@property (nonatomic, strong) UIView *containerView;

@end

@implementation MyCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self =  [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
//        [self.contentView addSubview:self.selectButton];
        [self.contentView addSubview:self.containerView];
        
    }
    return self;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    CGRect tmpRect = self.contentView.bounds;
    tmpRect.origin.x = 5;
    tmpRect.origin.y = 5;
    tmpRect.size.width = tmpRect.size.width - 10;
    tmpRect.size.height = tmpRect.size.height - 10;
    
    _containerView.frame = tmpRect;
    
}

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[MyCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    return cell;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


#pragma mark -Getter
-(UIView *)containerView {
    
    if (!_containerView) {
        
        _containerView = [[UIView alloc]init];
        _containerView.backgroundColor = [UIColor redColor];
        
    }
    return _containerView;
}

@end