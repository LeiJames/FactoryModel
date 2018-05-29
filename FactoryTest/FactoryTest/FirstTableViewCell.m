//
//  FirstTableViewCell.m
//  FactoryTest
//
//  Created by zhenguanqing on 16/3/24.
//  Copyright © 2016年 zhenguanqing. All rights reserved.
//

#import "FirstTableViewCell.h"
#import "First.h"

@implementation FirstTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
        self.titleLabel.center = self.contentView.center;
        [self.contentView addSubview:self.titleLabel];
    }
    return self;


}

-(void)layoutSubviews{
    [super layoutSubviews];
    self.titleLabel.frame = CGRectMake(0, 0, 100, 30);
    self.titleLabel.center = self.contentView.center;


}

-(void)setModel:(Model *)model{
    First *firstModel = (First *)model;
    self.titleLabel.text = firstModel.title;

}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
