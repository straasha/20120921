//
//  AppDelegate.h
//  20120917_1
//
//  Created by 小松 仁 on 12/09/17.
//  Copyright __MyCompanyName__ 2012年. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"
#import "Test3ViewController.h"
#import "TestObj.h"

@interface AppController : NSObject <UIApplicationDelegate, CCDirectorDelegate>
{
	UIWindow *window_;
	UINavigationController *navController_;

	CCDirectorIOS	*director_;							// weak ref
}

@property (nonatomic, retain) UIWindow *window;
@property (readonly) UINavigationController *navController;
@property (readonly) CCDirectorIOS *director;

@property(nonatomic, retain)TestObj* testObj;


@end
