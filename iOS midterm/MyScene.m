//
//  MyScene.m
//  iOS midterm
//
//  Created by Jimmy Tang on 3/17/14.
//  Copyright (c) 2014 Jimmy Tang. All rights reserved.
//

#import "MyScene.h"

@implementation MyScene

{
    SKSpriteNode *_charater;
    SKSpriteNode *_block;
    SKSpriteNode *_flag;
    
}



-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        
        SKSpriteNode* background = [SKSpriteNode spriteNodeWithImageNamed:@"b1.png"];
        background.position = CGPointMake(self.frame.size.width, self.frame.size.height);
        [self addChild:background];
        
        
        _block = [SKSpriteNode spriteNodeWithImageNamed: @"c2.png"];
        _block.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
        _block.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_block.size];
       [_block.physicsBody setDynamic:NO];
        [self addChild:_block];
        
        _flag = [SKSpriteNode spriteNodeWithImageNamed: @"flag.png"];
        _flag.position = CGPointMake(self.frame.size.width/4, self.frame.size.height/2);
        _flag.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_flag.size];
        [_flag.physicsBody setDynamic:NO];
        [self addChild:_flag];
        
        _charater = [SKSpriteNode spriteNodeWithImageNamed: @"c1.png"];
        _charater.position = CGPointMake(self.frame.size.width/3, self.frame.size.height/3);
        _charater.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_charater.size];
        [_charater.physicsBody setDynamic:NO];
        [self addChild:_charater];
        
        
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
   for (UITouch *touch in touches) {
       CGPoint location = [touch locationInNode:self];
        [_charater setPosition:location];
    
    
        
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_charater setPosition:location];
        
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event  {
    

    
}

-(void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
//    
//    if (!_mySquare1.physicsBody.dynamic) {
//        [_mySquare1.physicsBody setDynamic:YES];
//    }

    
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
