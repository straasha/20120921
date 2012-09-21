//
//  Test3ViewController.h
//  20120917_1
//
//  Created by 小松 仁 on 12/09/20.
//
//

#import <UIKit/UIKit.h>
#import "LoadingView.h"

@interface Test3ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
  dispatch_queue_t mainQueue;  
  dispatch_queue_t subQueue;
  UIActivityIndicatorView *loadingIndicator;
  LoadingView *loadingView;   
}


@property (retain, nonatomic) IBOutlet UITableView *table;

@property( retain, nonatomic )NSMutableArray *arr;

@property (retain, nonatomic) IBOutlet UIButton *BUTTON;

@property( assign, nonatomic ) BOOL flg;

- (IBAction)buttonPush:(id)sender;

@end
