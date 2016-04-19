//
//  ViewController.m
//  PullDownZoonIn
//
//  Created by tunsuy on 5/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import "ViewController.h"
#import "PullDownZoonInView.h"
#import "HeadView.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) PullDownZoonInView *pullDownZoonInImageView;
@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
//    self.navigationController.navigationBar.translucent = YES;
//    
//    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(leftBtnClk)];
//    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"确定" style:UIBarButtonItemStyleDone target:self action:@selector(rightBtnClk)];
//    
//    self.navigationItem.rightBarButtonItem = rightBtn;
//    self.navigationItem.leftBarButtonItem = leftBtn;
    
//    self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
//    self.navigationController.delegate = self;
    
//    self.navigationController.hidesBarsOnSwipe =YES;
    
    HeadView *headview = [[HeadView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64)];
    [headview addLeftButton:@"取消" withFont:[UIFont systemFontOfSize:12.0]];
    [headview addRightButton:@"确定" withFont:[UIFont systemFontOfSize:12.0]];
    headview.backgroundColor = [UIColor clearColor];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
    self.tableView.backgroundColor = [UIColor grayColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    
    [self.view addSubview:self.tableView];
    [self.view addSubview:headview];
    
//    self.pullDownZoonInImageView = [[PullDownZoonInView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 150)];
//    self.pullDownZoonInImageView.image = [UIImage imageNamed:@"IMG1.jpg"];
//    [self.tableView addSubview:self.pullDownZoonInImageView];
    
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, -150, [UIScreen mainScreen].bounds.size.width, 150)];
    self.imageView.image = [UIImage imageNamed:@"IMG1.jpg"];
    [self.tableView addSubview:self.imageView];
    
    self.tableView.contentInset = UIEdgeInsetsMake(75, 0, 0, 0);
    
//    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
//        self.edgesForExtendedLayout = UIRectEdgeNone;
//    }
    
}

//- (void) navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
//    self.navigationController.navigationBar.alpha = 0.2;
//}

- (void) leftBtnClk{};
- (void) rightBtnClk{};

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 30;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"cellid";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        cell.textLabel.text = @"下拉放大tableview";
    }
    return cell;
}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView{
//    scrollView.scrollEnabled = YES;
//    scrollView.bounces = YES;
    CGFloat offsetY = scrollView.contentOffset.y;
    NSLog(@"offsetY is :%f", offsetY);
    
//    显示效果
    if (offsetY < -150) {
//        超过imageview大小继续放大
//        CGRect frame = self.imageView.frame;
//        frame.origin.y = offsetY;
//        frame.size.height = -offsetY;
//        self.imageView.frame = frame;
        
//        超过imageview大小禁止下拉
        scrollView.contentOffset = CGPointMake(0, -150);
    }
//    else{
//        scrollView.scrollEnabled = NO;
//        scrollView.bounces = NO;
//    }
    
//        缩放效果
//        if (offsetY >= -150) {
//            CGRect frame = self.imageView.frame;
//            frame.origin.y = offsetY;
//            frame.size.height = -offsetY;
//            self.imageView.frame = frame;
//        }
//        else{
//            scrollView.contentOffset = CGPointMake(0, -150);
//        }
}

//- (void) scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
//    if (velocity.y > 0) {
////        self.navigationController.navigationBarHidden = NO;
//        CGRect frame = self.navigationController.view.frame;
//        frame.origin.y = -44;
//        self.navigationController.view.frame = frame;
//        frame = self.tableView.frame;
//        frame.origin.y = 84;
//        self.tableView.frame = frame;
//    }else{
////        self.navigationController.navigationBarHidden = YES;
//        CGRect frame = self.navigationController.view.frame;
//        frame.origin.y = 0;
//        self.navigationController.view.frame = frame;
//        frame = self.tableView.frame;
//        frame.origin.y = 64;
//        self.tableView.frame = frame;
//    }
//    
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
