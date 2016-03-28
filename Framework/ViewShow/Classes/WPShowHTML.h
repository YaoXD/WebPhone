//
//  WPShowHTML.h
//  ViewShow
//
//  Created by yons on 16/3/27.
//  Copyright © 2016年 YAO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WPShowHTML : NSObject
+ (instancetype)sharedWPShowHTML;

+ (NSError *)showContentWithHTML:(id)html;

@end
