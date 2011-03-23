//
//  JLNotebookView.m
//
//  Created by Jarod Luebbert on 2/14/11.
//  Copyright 2011 Jarod Luebbert. All rights reserved.
//

#import "JLNotebookView.h"

@implementation JLNotebookView

@synthesize startPoint;
@synthesize endPoint;
@synthesize lineColor;

- (id)initWithFrame:(CGRect)frame
{
  if ((self = [super initWithFrame:frame]))
  {
    startPoint = CGPointMake(44.0, 0.0);
    endPoint = CGPointMake(44.0, self.frame.size.height);
    lineColor = [UIColor blackColor];
  }
  return self;
}

- (void)drawRect:(CGRect)rect
{
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  CGContextSetShouldAntialias(context, NO);
  
  CGContextSetStrokeColorWithColor(context, [self.lineColor CGColor]);
  
  CGContextSetLineWidth(context, 1);
  
  CGContextBeginPath(context);
  CGContextMoveToPoint(context, startPoint.x, startPoint.y);
  CGContextAddLineToPoint(context, endPoint.x, endPoint.y);
  CGContextMoveToPoint(context, startPoint.x + 2.0f, startPoint.y);
  CGContextAddLineToPoint(context, endPoint.x + 2.0f, endPoint.y);
  
  CGContextDrawPath(context, kCGPathStroke);
}

- (void)dealloc
{
  [lineColor release];
  [super dealloc];
}

@end
