//
//  TestObj.h
//  20120917_1
//
//  Created by 小松 仁 on 12/09/17.
//
//

#import <Foundation/Foundation.h>
#import "ChildObj.h"

@interface TestObj : NSObject

@property( nonatomic, retain)ChildObj *child;

-(id)init;
-(void)setupChild;
-(void)objRel;

@end
