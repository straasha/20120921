//
//  Test2ViewController.m
//  20120917_1
//
//  Created by 小松 仁 on 12/09/17.
//
//

#import "Test2ViewController.h"

@interface Test2ViewController ()

@end

@implementation Test2ViewController
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
    [button release];
    [super dealloc];
}
- (IBAction)buttonPush:(id)sender {
AppController *ap = (AppController *)[[UIApplication sharedApplication] delegate];
[ap.testObj objRel];

[self.navigationController popToRootViewControllerAnimated:YES];

}
@end
