//
//  ViewController.m
//  UIViewControllerTest
//
//  Created by 翁洋 on 2019/8/7.
//  Copyright © 2019 翁洋. All rights reserved.
//

#import "ViewController.h"
int tip=0;
@interface ViewController ()

@end

@implementation ViewController


//类的初始化方法
+ (void)initialize{
    [super initialize];
    NSLog(@"%d initialize", ++tip);
}

//对象初始化方法
- (instancetype)init{
    self = [super init];
    if (self) {
        
    }
    NSLog(@"%d init", ++tip);
    return self;
}

//从归档初始化
- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        
    }
    NSLog(@"%d initWithCoder", ++tip);
    return self;
}

//从nib文件初始化
- (void)awakeFromNib{
    [super awakeFromNib];
    NSLog(@"%d awakeFromNib", ++tip);
}

//加载视图
- (void)loadView{
    [super loadView];
    NSLog(@"%d loadView", ++tip);
}

//已经加载视图
- (void)viewDidLoad{
    [super viewDidLoad];
    NSLog(@"%d viewDidLoad", ++tip);
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(20, 100, 280, 100)];
    label.text = @"Hello World, It is a good idea, So, what do you want to know?";
    
    //设置背景颜色
    label.backgroundColor = [UIColor redColor];
    //设置字体和字号
    label.font = [UIFont systemFontOfSize:23];
    //设置字体颜色
    label.textColor = [UIColor whiteColor];
    //设置对齐模式
    label.textAlignment = NSTextAlignmentCenter;
    //设置阴影颜色
    label.shadowColor = [UIColor greenColor];
    //设置阴影偏移量
    label.shadowOffset = CGSizeMake(10, 10);
    
    //label.numberOfLines = 0;
    label.lineBreakMode = NSLineBreakByTruncatingMiddle;
    
    [self.view addSubview:label];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(40, 600, 240, 240);
    //button.backgroundColor = [UIColor redColor];
    //[button setBackgroundImage:[UIImage imageNamed:@"Image"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"Image"] forState:UIControlStateNormal];
    [button setTitle:@"点击我一下" forState:UIControlStateNormal];
    [button setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 80, 40)];
    [button addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchDragExit];
    [self.view addSubview:button];
}

-(void)changeColor{
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
}

//将要布局子视图
- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    NSLog(@"%d viewWillLayoutSubviews", ++tip);
}

//已经布局子视图
- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"%d viewDidLayoutSubviews", ++tip);
}

//内存警告
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    NSLog(@"%d didReceiveMemoryWarning", ++tip);
}

//将要展示
- (void)viewWillApper:(BOOL)animate{
    [super viewWillAppear:animate];
    NSLog(@"%d viewWillAppear", ++tip);
}

//已经展示
- (void)viewDidAppear:(BOOL)animate{
    [super viewDidAppear:animate];
    NSLog(@"%d viewDidAppear", ++tip);
}

//将要消失
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"%d viewWillDisappear", ++tip);
}

//已经消失
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"%d viewDidDisappear", ++tip);
}

//被释放
- (void)dealloc{
    NSLog(@"%d dealloc", ++tip);
}

@end
