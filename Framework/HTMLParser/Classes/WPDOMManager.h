//
//  WPDOMManager.h
//  HTMLParser
//
//  Created by mac on 16/3/7.
//  Copyright © 2016年 YAO. All rights reserved.
//

#import "WPDOMNode.h"

@class WPDOMDocument;
@interface WPDOMManager : WPDOMNode

+ (instancetype)sharedWPDOMManager;

- (WPDOMDocument *)getDocumentFromHTMLData:(NSData *)data;

@end
