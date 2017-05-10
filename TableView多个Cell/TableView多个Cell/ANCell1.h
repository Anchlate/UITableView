//
//  ANCell1.h
//  TableView多个Cell
//
//  Created by Qianrun on 16/10/25.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ANCell1 : UITableViewCell

+ (id)cellCreateFromNibWithTableView:(UITableView *)tableView;
+ (NSString *)getID;

@end
