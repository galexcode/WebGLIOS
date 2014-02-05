//
//  GLMainVC.m
//  WebGLIOS
//
//  Created by viki on 2/5/14.
//  Copyright (c) 2014 viki. All rights reserved.
//

#import "GLMainVC.h"

@interface GLMainVC ()

@end

@implementation GLMainVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    id webDocumentView = [_webView performSelector:@selector(_browserView)];
    id backingWebView = [webDocumentView performSelector:@selector(webView)];
    [backingWebView _setWebGLEnabled:YES];
    
    NSURL *url = [NSURL URLWithString:@"http://get.webgl.com/"];
    [_webView loadRequest:[NSURLRequest requestWithURL:url]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)_browserView{
    [_webView _setWebGLEnabled:true];
}
@end
