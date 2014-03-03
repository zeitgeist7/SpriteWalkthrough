//
//  HelloScene.m
//  SpriteWalkthrough
//
//  Created by Rajiv Jhoomuck on 03/03/14.
//  Copyright (c) 2014 Shunyaek. All rights reserved.
//

#import "HelloScene.h"

@interface HelloScene ()

@property (nonatomic) BOOL contentCreated;

@end

@implementation HelloScene

- (void)didMoveToView:(SKView *)view
{
    if (!self.contentCreated) {
        [self createSceneContents];
        self.contentCreated = YES;
    }
}

#pragma mark - Touch Handling

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    SKNode *helloNode = [self childNodeWithName:@"helloNode"];
    if (helloNode != nil) {
        helloNode.name = nil;
        SKAction *moveUp = [SKAction moveByX:0.0 y:100.0 duration:0.5];
        SKAction *zoom = [SKAction scaleTo:2.0 duration:0.25];
        SKAction *pause = [SKAction waitForDuration:0.5];
        SKAction *fadeAway = [SKAction fadeOutWithDuration:0.25];
        SKAction *remove = [SKAction removeFromParent];
        SKAction *moveSequence = [SKAction sequence:@[moveUp, zoom, pause, fadeAway, remove]];
        [helloNode runAction:moveSequence];
    }
}

#pragma mark - Helper Methods

- (void)createSceneContents
{
    self.backgroundColor = [SKColor blueColor];
    self.scaleMode = SKSceneScaleModeAspectFit;
    [self addChild:[self newHelloNode]];
}

- (SKLabelNode *)newHelloNode
{
    SKLabelNode *helloNode = [SKLabelNode labelNodeWithFontNamed:@"Helvetica Neue Light"];
    helloNode.text = @"Hello World.";
    helloNode.fontSize = 42;
    helloNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    helloNode.name = @"helloNode";
    
    return helloNode;
}

@end
