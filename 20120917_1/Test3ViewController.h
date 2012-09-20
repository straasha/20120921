//
//  Test3ViewController.h
//  20120917_1
//
//  Created by 小松 仁 on 12/09/20.
//
//

#import <UIKit/UIKit.h>

@interface Test3ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (retain, nonatomic) IBOutlet UITableView *table;


@property( retain, nonatomic )NSMutableArray *arr;

@property (retain, nonatomic) IBOutlet UIButton *BUTTON;
- (IBAction)buttonPush:(id)sender;
@end
