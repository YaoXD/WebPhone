//
//  WPSetUpController.m
//  webPhone
//
//  Created by mac on 16/3/4.
//  Copyright © 2016年 yao. All rights reserved.
//

#import "WPSetUpController.h"
#import <HTMLParser/HTMLParser.h>
#import <ViewShow/ViewShow.h>

@implementation WPSetUpController

-(instancetype)init {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"SetUp" bundle:nil];
    self = [storyboard instantiateViewControllerWithIdentifier:@"SetUpStoryboard"];
    if (self) {
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toTextHTML {
    
    NSString * path = [NSBundle mainBundle].bundlePath;
    NSData * data = [NSData dataWithContentsOfFile:[path stringByAppendingPathComponent:@"text.html"]];
    
    WPDOMDocument * doc = [WPParserHTML parserHTML:data];
    
    if (doc) {
        [WPShowHTML showContentWithHTML:doc];
    }
    
}

- (IBAction)toIndexHTML {
    NSString * path = [NSBundle mainBundle].bundlePath;
    NSData * data = [NSData dataWithContentsOfFile:[path stringByAppendingPathComponent:@"index.html"]];
    
    id doc = [WPParserHTML parserHTML:data];
    
    if (doc) {
        [WPShowHTML showContentWithHTML:doc];
    }
}

@end
