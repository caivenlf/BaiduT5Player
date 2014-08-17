//
//  ViewController.m
//  BaiDuPlayer
//
//  Created by Vincent on 14-8-17.
//  Copyright (c) 2014年 Vicent. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    CyberPlayerController *cbPlayerController;
}
@property (weak, nonatomic) IBOutlet UIView *videoView;

@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
	
    _videoView.layer.borderWidth = 10.0;
    _videoView.layer.borderColor = [[UIColor greenColor]CGColor];
    
    NSString* msAK=@"f1EGXttfckqgWZyEmcio3gjc";
    NSString* msSK=@"DAaVX02hodFizxQ2ykOYdw9eHOH2BD5y";
    
    //添加开发者信息
    [[CyberPlayerController class ]setBAEAPIKey:msAK SecretKey:msSK ];
    //当前只支持CyberPlayerController的单实例
    cbPlayerController = [[CyberPlayerController alloc] init];
    //设置视频显示的位置
    [cbPlayerController.view setFrame: _videoView.frame];
    //将视频显示view添加到当前view中
    [self.view addSubview:cbPlayerController.view];
    
    
    NSURL *url = [NSURL URLWithString:[@"http://119.188.2.50/data2/video04/2013/04/27/00ab3b24-74de-432b-b703-a46820c9cd6f.mp4" stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    [cbPlayerController setContentURL:url];
    
    cbPlayerController.shouldAutoplay = YES;
    //初始化视频文件
    [cbPlayerController prepareToPlay];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
