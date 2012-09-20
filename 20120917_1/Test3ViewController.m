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

@synthesize arr;

@synthesize BUTTON;

- (void)viewWillAppear:(BOOL)animated {
  NSIndexPath* selection = [table indexPathForSelectedRow];
  if(selection){
    [table deselectRowAtIndexPath:selection animated:YES];
  }
  [table reloadData];
}

- (void)viewDidAppear:(BOOL)animated {
  [self.table flashScrollIndicators];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
     return arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 
    static NSString *CellIdentifier = @"Cell";
 
    UITableViewCell *cell = [table dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }

    // Set up the cell...
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
    // Do any additional setup after loading the view from its nib.
    
    arr = [[NSMutableArray alloc]initWithObjects:
        @"aaa",
        @"bbb",
        @"ccc",
        @"ddd",
        nil
    ];
    
    table.delegate = self;
    table.dataSource = self;
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
