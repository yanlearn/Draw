//
//  AnimateView.m
//  testDraw
//
//  Created by xy on 2019/3/16.
//  Copyright © 2019年 xy. All rights reserved.
//

#import "AnimateView.h"


@interface AnimateView()
@property (nonatomic,assign)CGFloat useY;
@end

@implementation AnimateView


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.useY = 0;
        CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(displayAction)];
        [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
        
    }
    return self;
}

- (void)displayAction {
    
    self.useY+= 2;
    if (self.useY > CGRectGetMaxY(self.bounds)) {
        self.useY = 0;
    }
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {

    NSString *hi = @"你好吗";
    NSDictionary *useDic = @{NSForegroundColorAttributeName:[UIColor blackColor],NSFontAttributeName:[UIFont systemFontOfSize:14]};
    [hi drawAtPoint:CGPointMake(50, self.useY) withAttributes:useDic];
    
}

@end
