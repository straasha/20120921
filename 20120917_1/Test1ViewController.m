//
//  Test1ViewController.m
//  20120917_1
//
//  Created by 小松 仁 on 12/09/17.
//
//

#import "Test1ViewController.h"
#import "Test2ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface Test1ViewController ()

@end

@implementation Test1ViewController
@synthesize button;

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
}

- (void)viewDidUnload
{
    [self setButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    //[button release];
    [super dealloc];
}

- (IBAction)buttonPush:(id)sender {

/*
    NSMutableArray *hogeArr = [[NSMutableArray alloc] init];
    NSString *str = @"{\"name\": \"John Smith\", \"age\": 33}";
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    
    for (int i=0; i<=10; i++) {
      [hogeArr addObject:
        [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil]
      ];
    }


NSLog(@"eeee");
*/


//NSURL *url = [NSURL URLWithString:@"http://a1967.v.phobos.apple.com/us/r20/Video/d9/9f/dd/mzm.rkakzhwf..640x352.h264lc.u.p.m4v"];
//NSData *data = [NSData dataWithContentsOfURL:url];
//AVAudioPlayer *p = [[AVAudioPlayer alloc] initWithData:data error:nil];
//[p play];
  
     
AppController *ap = (AppController *)[[UIApplication sharedApplication] delegate];
[ap.testObj setupChild];

                       
    Test2ViewController *vc = [[[Test2ViewController alloc] init] autorelease];
    [self.navigationController pushViewController:vc animated:YES];

}

@end
