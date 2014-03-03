//
//  SpriteViewController.m
//  SpriteWalkthrough
//
//  Created by Rajiv Jhoomuck on 03/03/14.
//  Copyright (c) 2014 Shunyaek. All rights reserved.
//

@import SpriteKit;
#import "SpriteViewController.h"

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

@end
