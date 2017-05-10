
//
//  ANCell3.m
//  TableView多个Cell
//
//  Created by Qianrun on 16/10/25.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import "ANCell3.h"

@implementation ANCell3

+ (id)cellCreateFromNibWithTableView:(UITableView *)tableView {
    
//    UINib *nib = [UINib nibWithNibName:@"ANCell3" bundle:nil];
//    [tableView registerNib:nib forCellReuseIdentifier:[self getID]];

    [tableView registerClass:[ANCell3 class] forCellReuseIdentifier:[self getID]];
    
    ANCell3 *cell = [tableView dequeueReusableCellWithIdentifier:[self getID]];
    
    cell.backgroundColor = [UIColor lightGrayColor];
    
    NSLog(@"......cell3......:%p", cell);
    
    return cell;
}

+ (NSString *)getID {
    return @"cell3";
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
