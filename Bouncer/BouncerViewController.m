//
//  BouncerViewController.m
//  Bouncer
//
//  Created by 1000653 on 2014. 8. 5..
//  Copyright (c) 2014년 Stanford. All rights reserved.
//

#import "BouncerViewController.h"

@interface BouncerViewController ()
@property (nonatomic, strong) UIView *redBlock;
@property (nonatomic, strong) UIDynamicAnimator *animator;
@end

@implementation BouncerViewController

static CGSize blockSize = {40,40};

- (UIView *)addBlockOffsetFromCenterBy:(UIOffset)offset
{
    CGPoint blockCenter = CGPointMake(CGRectGetMidX(self.view.bounds)+offset.horizontal,
                                      CGRectGetMidY(self.view.bounds)+offset.vertical);
    CGRect blockFrame = CGRectMake(blockCenter.x - blockSize.width/2,
                                   blockCenter.y - blockSize.height/2,
                                   blockSize.width,
                                   blockSize.height);
    
    UIView *block = [[UIView alloc] initWithFrame:blockFrame];
    [self.view addSubview:block];
    return block;
}
- (void)startGame
{
    self.redBlock = [self addBlockOffsetFromCenterBy:UIOffsetMake(0,0)];
    self.redBlock.backgroundColor = [UIColor redColor];
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self startGame];
}


@end
