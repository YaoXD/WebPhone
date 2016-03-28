//
//  WPDOMDocument.h
//  HTMLParser
//
//  Created by mac on 16/3/7.
//  Copyright © 2016年 YAO. All rights reserved.
//

#import "WPDOMNode.h"
#import "OCGumbo.h"

@class WPDOMElement;
@interface WPDOMDocument : OCGumboDocument

+(WPDOMDocument *)documentWithHTMLString:(NSString *)HTMLString;
-(WPDOMDocument *)initDocumentWithHTMLString:(NSString *)HTMLString;


@end
