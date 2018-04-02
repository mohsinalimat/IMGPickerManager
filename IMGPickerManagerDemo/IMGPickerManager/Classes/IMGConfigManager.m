//
//  IMGConfiguration.m
//  FYImageManagerDemo
//
//  Created by tongfangyuan on 2018/3/28.
//  Copyright © 2018年 tongfangyuan. All rights reserved.
//

#import "IMGConfigManager.h"

static IMGConfigManager *_shareManager = nil;

@implementation IMGConfigManager

+ (IMGConfigManager *) shareManager {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shareManager = [[[self class] alloc] init];
    });
    return _shareManager;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        _maxCount = 9;
    }
    return self;
}

@end