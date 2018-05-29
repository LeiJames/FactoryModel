//
//  ThirdTableViewCell.m
//  FactoryTest
//
//  Created by zhenguanqing on 16/3/24.
//  Copyright © 2016年 zhenguanqing. All rights reserved.
//

#import "ThirdTableViewCell.h"
#import "Third.h"

@implementation ThirdTableViewCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.imageV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 50, 40)];
        self.imageV.center = self.contentView.center;
        self.imageV.backgroundColor = [UIColor blueColor];
        [self.contentView addSubview:self.imageV];
    }
    return self;


}


-(void)layoutSubviews{
    [super layoutSubviews];
    
    self.imageV.frame = CGRectMake(0, 0, 50, 40);
    self.imageV.center = self.contentView.center;



}

-(void)setModel:(Model *)model{

    Third *thirdModel = (Third *)model;
    self.imageV.image = [UIImage imageNamed:thirdModel.img];

}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
