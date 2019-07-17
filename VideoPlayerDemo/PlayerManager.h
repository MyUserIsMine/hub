//
//  PlayerManager.h
//  VideoPlayerDemo
//
//  Created by MOYO on 2019/7/17.
//  Copyright © 2019年 MOYO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN



@interface PlayerManager : NSObject

+ (instancetype)shareManager;

- (void)playVideoWithUrl:(NSString *)url attachView:(UIView *)view frame:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END
