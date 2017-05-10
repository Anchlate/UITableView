

//
//  ANCell2.m
//  TableView多个Cell
//
//  Created by Qianrun on 16/10/25.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import "ANCell2.h"

@implementation ANCell2


+ (id)cellCreateFromNibWithTableView:(UITableView *)tableView {
    
    UINib *nib = [UINib nibWithNibName:@"ANCell2" bundle:nil];
    [tableView registerNib:nib forCellReuseIdentifier:[self getID]];
    
    ANCell2 *cell = [tableView dequeueReusableCellWithIdentifier:[self getID]];
//    NSLog(@"......cell:%p", cell);
    return cell;
}

+ (NSString *)getID {
    return @"cell2";
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
