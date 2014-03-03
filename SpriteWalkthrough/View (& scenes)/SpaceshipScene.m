//
//  SpaceshipScene.m
//  SpriteWalkthrough
//
//  Created by Rajiv Jhoomuck on 03/03/14.
//  Copyright (c) 2014 Shunyaek. All rights reserved.
//

#import "SpaceshipScene.h"

@interface SpaceshipScene ()

@property BOOL contentCreated;

@end

@implementation SpaceshipScene

- (void)didMoveToView:(SKView *)view
{
    if (!self.contentCreated) {
        [self createContents];
        self.contentCreated = YES;
    }
}

#pragma mark - Helper Methods

- (void)createContents
{
    self.backgroundColor = [SKColor blackColor];
    self.scaleMode = SKSceneScaleModeAspectFit;
}

@end
