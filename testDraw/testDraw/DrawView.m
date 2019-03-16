//
//  DrawView.m
//  testDraw
//
//  Created by xy on 2019/3/16.
//  Copyright © 2019年 xy. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"%s",__func__);
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"%s",__func__);
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    NSLog(@"%s",__func__);
    self.layer.borderColor = [UIColor greenColor].CGColor;
    self.layer.borderWidth = 2;
}

- (void)drawRect:(CGRect)rect {

    NSLog(@"%s",__func__);
    [self addImage];
    
}

- (void)addImage {
    
    UIImage *image = [UIImage imageNamed:@"e.jpg"];
    [image drawAtPoint:CGPointZero];
}

- (void)addStr {
    
    NSString *hi = @"你好吗";
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:14],NSForegroundColorAttributeName:[UIColor blackColor]};
    [hi drawAtPoint:CGPointMake(50, 50) withAttributes:dic];
    
}

- (void)addArc {
    
    CGContextRef ctf = UIGraphicsGetCurrentContext();
    
    CGPoint center = CGPointMake(100, 100);
    CGFloat radius = 20;
    CGFloat startAngle = M_PI / 2;
    CGFloat endAngle = -M_PI / 2;
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:YES];
    
    CGContextAddPath(ctf, bezierPath.CGPath);
    
    CGContextDrawPath(ctf, kCGPathStroke);
    
}

- (void)addSpecialCorner {
    
    CGContextRef ctf = UIGraphicsGetCurrentContext();
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(50, 50, 100, 50) byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(25, 25)];
    
    CGContextAddPath(ctf, bezierPath.CGPath);
    
    CGContextDrawPath(ctf, kCGPathStroke);
    
}

- (void)addCorner {
    
    CGContextRef ctf = UIGraphicsGetCurrentContext();
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(50, 50, 100, 100) cornerRadius:50];
    
    CGContextAddPath(ctf, bezierPath.CGPath);
    
    CGContextDrawPath(ctf, kCGPathStroke);
    
}

- (void)addOval {
    
    CGContextRef ctf = UIGraphicsGetCurrentContext();
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 50, 100, 50)];
    
    CGContextAddPath(ctf, bezierPath.CGPath);
    
    CGContextDrawPath(ctf, kCGPathStroke);
    
}

- (void)addRect {
    
    CGContextRef ctf = UIGraphicsGetCurrentContext();
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRect:CGRectMake(50, 50, 150, 150)];
    
    CGContextAddPath(ctf, bezierPath.CGPath);
    
    CGContextDrawPath(ctf, kCGPathStroke);

}
- (void)addLineAndCurve {
    
    CGContextRef ctf = UIGraphicsGetCurrentContext();
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint:CGPointMake(20, 20)];
    [bezierPath addLineToPoint:CGPointMake(40, 40)];
    CGPoint endPoint = CGPointMake(100, 100);
    CGPoint controlPoint = CGPointMake(60, 80);
    [bezierPath addQuadCurveToPoint:endPoint controlPoint:controlPoint];
    
    CGContextAddPath(ctf, bezierPath.CGPath);
    
    CGContextStrokePath(ctf);
    //CGContextDrawPath(ctf, kCGPathStroke);
    
}

@end
