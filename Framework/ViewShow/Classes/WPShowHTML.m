//
//  WPShowHTML.m
//  ViewShow
//
//  Created by yons on 16/3/27.
//  Copyright © 2016年 YAO. All rights reserved.
//

#import "WPShowHTML.h"
#import <HTMLParser/HTMLParser.h>

@implementation WPShowHTML

static WPShowHTML *_sharedWPShowHTML = nil;

#pragma mark - 单例实现
+ (instancetype)sharedWPShowHTML {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedWPShowHTML = [[WPShowHTML alloc] init];
    });
    
    return _sharedWPShowHTML;
}

+ (instancetype)alloc {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedWPShowHTML = [[super alloc] init];
    });
    return _sharedWPShowHTML;
}

- (void)dealloc {
}


+ (NSError *)showContentWithHTML:(id)html {
    
    if ([[html class] isSubclassOfClass:[WPDOMDocument class]]) {
        WPDOMDocument * doc = (WPDOMDocument *)html;
        
        if (doc.head) {
            NSLog(@"%@",doc.head);
        }
        
        
        
    }
    
    
    return nil;
}


@end
