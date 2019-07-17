//
//  PlayerManager.m
//  VideoPlayerDemo
//
//  Created by MOYO on 2019/7/17.
//  Copyright © 2019年 MOYO. All rights reserved.
//

#import "PlayerManager.h"
#import <AVFoundation/AVFoundation.h>

@interface PlayerManager()

@property(nonatomic,strong) AVPlayer *avPlayer;
@property(nonatomic,strong) AVPlayerItem *playerItem;
@property(nonatomic,strong) AVPlayerLayer *playerLayer;

@end
@implementation PlayerManager

+(instancetype)shareManager{
    static PlayerManager *manager = nil;
    dispatch_once_t token;
    dispatch_once(&token, ^{
        manager = [[PlayerManager alloc]init];
    });
    return manager;
}



-(void)playVideoWithUrl:(NSString *)url attachView:(UIView *)view{
    
    _playerItem = [AVPlayerItem playerItemWithURL:[NSURL URLWithString:url]];
    
//    [_playerItem addObserver:self forKeyPath:@"status" options:NSKeyValueObservingOptionNew context:nil];
//    [_playerItem addObserver:self forKeyPath:@"loadedTimeRanges" options:NSKeyValueObservingOptionNew context:nil];
    
    _avPlayer = [AVPlayer playerWithPlayerItem:_playerItem];
    
    [_avPlayer addPeriodicTimeObserverForInterval:CMTimeMake(1,1) queue:dispatch_get_main_queue() usingBlock:^(CMTime time) {
        NSLog(@"播放进度:%@",@(CMTimeGetSeconds(time)));
    }];
    
    _playerLayer = [AVPlayerLayer playerLayerWithPlayer:_avPlayer];
    _playerLayer.frame = view.frame;
    [view.layer addSublayer:_playerLayer];
    [_avPlayer play];
}

-(void)stopPlay{
    [_playerLayer removeFromSuperlayer];
    _avPlayer = nil;
    _playerItem = nil;
}


-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
}


@end
