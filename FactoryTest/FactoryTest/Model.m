//
//  Model.m
//  FactoryTest
//
//  Created by zhenguanqing on 16/3/24.
//  Copyright © 2016年 zhenguanqing. All rights reserved.
//

#import "Model.h"
#import "First.h"
#import "Second.h"
#import "Third.h"

@implementation Model


//根据字典内提供的数据分别创建出对应的model来获取数据
+(instancetype)initWithDictionary:(NSDictionary *)dictionary{
    //先使用父类创建对象；
    Model *rootModel = nil;
    
    //根据字典中的key对应的数据初始化不同的子类对象并将其返回给父类
    if ([dictionary[@"tag"] isEqualToString:@"1"]) {
        rootModel = [[First alloc]init];
        
    }else if ([dictionary[@"tag"] isEqualToString:@"2"]){
        rootModel = [[Second alloc]init];
    
    }else if ([dictionary[@"tag"] isEqualToString:@"3"]){
        rootModel = [[Third alloc]init];

    }

    [rootModel setValuesForKeysWithDictionary:dictionary];
    return rootModel;

}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
    
}

@end
