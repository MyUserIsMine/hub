//
//  ViewController.m
//  VideoPlayerDemo
//
//  Created by MOYO on 2019/7/17.
//  Copyright © 2019年 MOYO. All rights reserved.
//

#import "ViewController.h"
#import "PlayCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:({
        UITableView *table = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
        table.delegate = self;
        table.dataSource = self;
        table;
    })];
    // Do any additional setup after loading the view, typically from a nib.
}





#pragma mark --

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    PlayCell *cell = [tableView dequeueReusableCellWithIdentifier:@"playCell"];
    if (!cell) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"PlayCell" owner:self options:nil]lastObject];
    }
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 300;
}



@end
