//
//  TableViewCell.m
//  MVC
//
//  Created by shuzhenguo on 15/9/24.
//  Copyright © 2015年 shuzhenguo. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        _nameLbl = [[UILabel alloc] initWithFrame:CGRectMake(10, 5, 100, 30)];
        _nameLbl.backgroundColor = [UIColor redColor];
        _nameLbl.font = [UIFont systemFontOfSize:20];
        [self.contentView addSubview:_nameLbl];
        
        _homeLbl = [[UILabel alloc] initWithFrame:CGRectMake(120, 5, 130, 30)];
        _homeLbl.backgroundColor = [UIColor greenColor];
        _homeLbl.font = [UIFont systemFontOfSize:20];
        [self.contentView addSubview:_homeLbl];
        
    }
    return self;
}



- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
