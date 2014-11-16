//
//  MyCustomView.m
//  Drawing a House
//
//  Created by macbook on 16/11/14.
//  Copyright (c) 2014 Eray Diler. All rights reserved.
//

#import "MyCustomView.h"

@implementation MyCustomView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    UIBezierPath *body = [UIBezierPath bezierPath];
    body.lineWidth = 2.0;
    
    // Body
    [body moveToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [body addLineToPoint:CGPointMake(3/4.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [body addLineToPoint:CGPointMake(3/4.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height)];
    [body addLineToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height)];
    [body addLineToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    
    [[UIColor yellowColor] setFill];
    [body fill];
    [body stroke];
    
    // Roof
    UIBezierPath *roof = [UIBezierPath bezierPath];
    [roof moveToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [roof addLineToPoint:CGPointMake(1/2.0 * self.bounds.size.width, 1/4.0 * self.bounds.size.height)];
    [roof addLineToPoint:CGPointMake(3/4.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    
    [[UIColor redColor] setFill];
    [roof fill];
    [roof stroke];
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenHeigth = [UIScreen mainScreen].bounds.size.height;
    NSLog(@"Screen Width %f Height %f", screenWidth, screenHeigth);
    NSLog(@"View's x %f y %f", self.bounds.size.width, self.bounds.size.height);
    
}


@end
