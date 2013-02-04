//
//  ViewController.m
//  TCClickTestApplication
//
//  Created by Gu YongQing on 2/3/13.
//  Copyright (c) 2013 TrueColor. All rights reserved.
//

#import "ViewController.h"
#import "TCClick.h"

@interface ViewController (){
  UIButton* testEventButton;
}

@end

@implementation ViewController

- (void)viewDidLoad{
  [super viewDidLoad];
  
  testEventButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  testEventButton.frame = CGRectMake(10, 100, 150, 30);
  [testEventButton setTitle:@"Create a event" forState:UIControlStateNormal];
  [testEventButton addTarget:self action:@selector(onTestEventButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:testEventButton];
}

- (void)didReceiveMemoryWarning{
  [super didReceiveMemoryWarning];
}


#pragma mark - event handler
- (void) onTestEventButtonClicked:(UIButton*)sender{
  [TCClick event:@"Test Event"];
  [TCClick event:@"点击事件" param:@"所点击按钮" value:[sender.class description]];
}
@end
