//
//  WPDOMManager.m
//  HTMLParser
//
//  Created by mac on 16/3/7.
//  Copyright © 2016年 YAO. All rights reserved.
//

#import "WPDOMManager.h"
#import "WPDOMDocument.h"

@interface WPDOMManager ()

@end


@implementation WPDOMManager

static WPDOMManager *_sharedWPDOMManager = nil;

#pragma mark - 单例实现
+ (instancetype)sharedWPDOMManager {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedWPDOMManager = [[WPDOMManager alloc] init];
    });
    
    return _sharedWPDOMManager;
}

+(instancetype)alloc {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedWPDOMManager = [[super alloc] init];
    });
    return _sharedWPDOMManager;
}

-(void)dealloc {
}

#pragma mark -

- (WPDOMDocument *)getDocumentFromHTMLData:(NSData *)data {
    NSString *HTMLString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    WPDOMDocument * document = [WPDOMDocument documentWithHTMLString:HTMLString];
    return document;
}
@end
