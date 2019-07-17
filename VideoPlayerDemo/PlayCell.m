//
//  PlayCell.m
//  VideoPlayerDemo
//
//  Created by MOYO on 2019/7/17.
//  Copyright © 2019年 MOYO. All rights reserved.
//

#import "PlayCell.h"
#import "PlayerManager.h"

@interface PlayCell()

@property(nonatomic,copy)NSString *videoUrl;

@end

@implementation PlayCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}




- (IBAction)start:(id)sender {

    
    NSString *url = @"http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4";
    
    [[PlayerManager shareManager]playVideoWithUrl:url attachView:self.contentView];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
