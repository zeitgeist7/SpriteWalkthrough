//
//  SpriteViewController.m
//  SpriteWalkthrough
//
//  Created by Rajiv Jhoomuck on 03/03/14.
//  Copyright (c) 2014 Shunyaek. All rights reserved.
//

@import SpriteKit;
#import "SpriteViewController.h"
#import "HelloScene.h"

@interface SpriteViewController ()

@end

@implementation SpriteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    SKView *spriteView = (SKView *)self.view;
    spriteView.showsDrawCount = YES;    // fewer the better
    spriteView.showsNodeCount = YES;    // yeah whatever
    spriteView.showsFPS = YES;  // should try to maintain it to a constant frame rate
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    HelloScene *hello = [[HelloScene alloc] initWithSize:CGSizeMake(768.0, 1024.0)];
    SKView *spriteView = (SKView *)self.view;
    [spriteView presentScene:hello];
    
}

@end
