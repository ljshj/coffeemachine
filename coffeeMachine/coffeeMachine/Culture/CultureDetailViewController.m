//
//  CultureDetailViewController.m
//  coffeeMachine
//
//  Created by Beifei on 7/29/14.
//  Copyright (c) 2014 iChuansuo. All rights reserved.
//

#import "CultureDetailViewController.h"

@interface CultureDetailViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation CultureDetailViewController

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
    // Do any additional setup after loading the view.
    self.title = [self.data objectForKey:@"title"];
    
    NSString *url = [self.data objectForKey:@"url"];
    if (url) {
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:60]];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
