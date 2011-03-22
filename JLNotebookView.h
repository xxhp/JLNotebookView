//
//  JLNotebookView.h
//
//  Created by Jarod Luebbert on 2/14/11.
//  Copyright 2011 Jarod Luebbert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JLNotebookView : UIView
{
  BOOL hasHighResScreen;
}

@property (nonatomic) CGPoint startPoint;
@property (nonatomic) CGPoint endPoint;
@property (nonatomic, retain) UIColor *lineColor;

@end
