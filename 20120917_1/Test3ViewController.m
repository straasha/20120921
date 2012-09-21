//
//  Test3ViewController.m
//  20120917_1
//
//  Created by 小松 仁 on 12/09/20.
//
//

#import "Test3ViewController.h"

@interface Test3ViewController ()

@end

@implementation Test3ViewController

@synthesize table;

@synthesize arr, flg;

@synthesize BUTTON;

-(void)tableView:(UITableView*)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {

  if (indexPath.row >= ( arr.count -1) ) {
  
 
  //画面を表示する
  [loadingView addSubview:loadingIndicator];
  [self.view addSubview:loadingView];

  //非同期処理のQueueをセット
  mainQueue = dispatch_get_main_queue();
  subQueue = dispatch_queue_create("utaate_sub_queue", NULL);
    [table beginUpdates];

  //非同期処理
  dispatch_async(subQueue, ^{
    [self execSubQueue :indexPath];

    //メインキュー
    dispatch_async(mainQueue, ^{
      [self execMainQueue];
    });
  });
    
  }

}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
	NSLog(@"scroll end1");
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
	if (!decelerate) {
		NSLog(@"scroll end2");
	}
}

//サブキューで処理するメソド、子供でオーバーライドする
-(void)execSubQueue :(NSIndexPath *)indexPath
{
sleep(1);



    NSInteger i = 1;
    for( i=1; i<=10; i++ ){
    
    
      NSString *str = [NSString stringWithFormat :@"%d", indexPath.row + i];
      [arr addObject:str];
      NSIndexPath *index = [NSIndexPath indexPathForRow:(indexPath.row + i) inSection:0];
      [table insertRowsAtIndexPaths :[NSArray arrayWithObject:index] withRowAnimation:UITableViewRowAnimationFade];
    }
}

//サブキューからメインキューに帰ってきたときに処理するメソド、子供でオーバーライドする
//[super execMainQueue]でサブキューのメモリをリリースし、くるくるを止める
-(void)execMainQueue
{
    [table endUpdates];
  [loadingIndicator removeFromSuperview];
  [loadingView removeFromSuperview];
  dispatch_release(subQueue);
}






- (void)viewWillAppear:(BOOL)animated {
  NSIndexPath* selection = [table indexPathForSelectedRow];
  if(selection){
    [table deselectRowAtIndexPath:selection animated:YES];
  }
  [table reloadData];
}

- (void)viewDidAppear:(BOOL)animated {
  [self.table flashScrollIndicators];
  flg = 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  NSInteger hoge = arr.count;
     return arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 
    static NSString *CellIdentifier = @"Cell";
 
    UITableViewCell *cell = [table dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }

    // Set up the cell...
    NSLog(@" aaaa %d", indexPath.row);
    cell.text = [arr objectAtIndex :indexPath.row];
    return cell;
}

- (IBAction)buttonPush:(id)sender {
    NSIndexPath *index = [NSIndexPath indexPathForRow:4 inSection:0];
    [arr addObject:@"eee"];
    [table insertRowsAtIndexPaths
      :[NSArray arrayWithObject:index] withRowAnimation:nil];
      
}







- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    arr = [[NSMutableArray alloc] init];
    
    // Do any additional setup after loading the view from its nib.
    for( int i=0; i<=10; i++ ){
      NSString *str = [NSString stringWithFormat :@"%d", i];
      [arr addObject:str];
    }

/*
label = [[UILabel alloc] initWithFrame:CGRectMake(100, 300, 60, 30)];
label.text = @"hohoho";
[table addSubview:label];
*/  
    
    table.delegate = self;
    table.dataSource = self;
  
  
  //くるくる回るインジケーターをセット
  loadingIndicator = [[
    UIActivityIndicatorView alloc]
    initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge
  ];
  [loadingIndicator setFrame:CGRectMake ((320/2)-20, (480/2)-60, 40, 40)]; 
  [loadingIndicator startAnimating];

  //半透明のViewをセット
  loadingView = [
    [LoadingView alloc] initWithFrame:[[UIScreen mainScreen] bounds]
  ];
}

- (void)viewDidUnload
{
    [self setTable:nil];
    [self setTable:nil];
    [self setBUTTON:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [table release];
    [table release];
    [BUTTON release];
    [super dealloc];
}
@end
