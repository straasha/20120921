//
//  TestObj.m
//  20120917_1
//
//  Created by 小松 仁 on 12/09/17.
//
//

#import "TestObj.h"

@implementation TestObj

@synthesize child;

-(void)dealloc
{
    [child release];
    [super dealloc];
}

-(void)objRel
{
    [child release];
}

-(id)init
{
    self = [super init];
    return self;
}

-(void)setupChild
{
    child = [[ChildObj alloc] init];
    [child setup];
}


@end
