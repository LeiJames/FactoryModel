//
//  RootViewController.m
//  FactoryTest
//
//  Created by zhenguanqing on 16/3/24.
//  Copyright © 2016年 zhenguanqing. All rights reserved.
//

#import "RootViewController.h"

#import "Model.h"
#import "First.h"
#import "Second.h"
#import "Third.h"
#import "MyTableViewCell.h"
#import "FirstTableViewCell.h"
#import "SecondTableViewCell.h"
#import "ThirdTableViewCell.h"

@interface RootViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)UITableView *myTableView;
@property(nonatomic,strong)NSMutableArray *dataArray;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    self.myTableView = [[UITableView alloc]initWithFrame:self.view.bounds];

    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    
    self.myTableView.rowHeight = 50;
    
    [self.view addSubview:self.myTableView];
    
    [self addData];
    
    
}

-(void)addData{

    NSString *path = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];
    NSArray *array = [NSArray arrayWithContentsOfFile:path];
    
    for (NSDictionary *dic in array) {
    
        Model *model = [Model initWithDictionary:dic];
        //将不同的子类创建的model对象添加到数组中
        [self.dataArray addObject:model];
                        
    }



}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{


    return [self.dataArray count];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //根据indexPath.row获取对应的model
    Model *model = [self.dataArray objectAtIndex:indexPath.row];
    
    //根据取出的modle获取对应的类名
    NSString *modelName = [NSString stringWithUTF8String:object_getClassName(model)];
    
    //根据不同的唯一标识重用不同的cell
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:modelName];
    
    if (cell == nil) {
        //根据我们每行提供的model创建出对应的cell（根据不同的需求生产不同的产品）
        cell = [MyTableViewCell initWithModel:model];
    }
    
    
    //映射关系->以类名为唯一标示      类对应mod
    //赋值
    [cell setModel:model];

    return cell;
}


-(NSMutableArray *)dataArray{
    if (_dataArray == nil) {
        _dataArray = [[NSMutableArray alloc]init];
    }
    return _dataArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
