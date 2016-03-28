//
//  WPParserHTML.m
//  webPhone
//
//  Created by mac on 16/2/22.
//  Copyright © 2016年 yao. All rights reserved.
//

#import "WPParserHTML.h"
#import "WPDOMManager.h"
#import "WPDOMDocument.h"

@implementation WPParserHTML


+ (id)parserHTML:(NSData *)data {
    return [[[WPParserHTML alloc] init] parserHTML:data];
}

- (id)parserHTML:(NSData *)data {
    
    
    WPDOMDocument * document = [[WPDOMManager sharedWPDOMManager] getDocumentFromHTMLData:data];
    
    
    return document;
    
}

@end
