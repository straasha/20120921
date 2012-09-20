//
//  ChildObj.m
//  20120917_1
//
//  Created by 小松 仁 on 12/09/17.
//
//

#import "ChildObj.h"

@implementation ChildObj

@synthesize arr;

-(void)dealloc
{
    [arr release];
    [super dealloc];
}

-(id)init
{
    self = [super self];
    return self;
}

-(void)setup
{
    arr = [[NSMutableArray alloc] init];
    [arr addObject:@"aaa"];
    [arr addObject:@"bbb"];
    [arr addObject:@"ccc"];
}

@end
