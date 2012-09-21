//
//  LoadingView.m
//  mermaid_komatsu_20120821
//
//  Created by  on 12/08/22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "LoadingView.h"

@implementation LoadingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
      [self setBackgroundColor:[UIColor blackColor]];
      [self setAlpha:0.5];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
