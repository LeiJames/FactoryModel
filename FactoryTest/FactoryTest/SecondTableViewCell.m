//
//  SecondTableViewCell.m
//  FactoryTest
//
//  Created by zhenguanqing on 16/3/24.
//  Copyright © 2016年 zhenguanqing. All rights reserved.
//

#import "SecondTableViewCell.h"
#import "Second.h"

@implementation SecondTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 0, 50, 50)];
        [self.contentView addSubview:self.titleLabel];
        
        self.imageV = [[UIImageView alloc]initWithFrame:CGRectMake(150, 0, 50, 50)];
        self.imageV.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:self.imageV];
    }
    return self;



}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    self.titleLabel.frame = CGRectMake(100, 0, 50, 50);
    self.imageV.frame = CGRectMake(150, 0, 50, 50);
    


}

-(void)setModel:(Model *)model{

    Second *secondModel = (Second *)model;
    
    self.titleLabel.text = secondModel.title;
    self.imageV.image = [UIImage imageNamed:secondModel.img];


}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
