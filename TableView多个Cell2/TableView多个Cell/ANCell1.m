
//
//  ANCell1.m
//  TableView多个Cell
//
//  Created by Qianrun on 16/10/25.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import "ANCell1.h"

@implementation ANCell1

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        NSLog(@".........................???? iit");
        
    }
    return self;
    
}

+ (id)cellCreateFromNibWithTableView:(UITableView *)tableView {
    
//    UINib *nib = [UINib nibWithNibName:@"ANCell1" bundle:nil];
//    [tableView registerNib:nib forCellReuseIdentifier:[self getID]];
    
    [tableView registerClass:[ANCell1 class] forCellReuseIdentifier:[self getID]];
    
    ANCell1 *cell = [tableView dequeueReusableCellWithIdentifier:[self getID]];
    cell.backgroundColor = [UIColor blueColor];
    
    return cell;
}

+ (NSString *)getID {
    return @"cell1";
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
