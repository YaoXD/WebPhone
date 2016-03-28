//
//  WPDOMDocument.m
//  HTMLParser
//
//  Created by mac on 16/3/7.
//  Copyright © 2016年 YAO. All rights reserved.
//

#import "WPDOMDocument.h"
#import "OCGumbo.h"
#import "OCGumbo+Query.h"

@implementation WPDOMDocument



+(WPDOMDocument *)documentWithHTMLString:(NSString *)HTMLString {
    return [[WPDOMDocument alloc] initWithHTMLString:HTMLString];
}


-(instancetype)initWithHTMLString:(NSString *)htmlString {
    self = [super initWithHTMLString:htmlString];
    if (self) {
        
    }
    return self;
}

@end
