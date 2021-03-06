//
//  HomeScreenViewController.m
//  CircuitRacer
//
//  Created by Main Account on 9/23/13.
//  Copyright (c) 2013 Razeware LLC. All rights reserved.
//

#import "HomeScreenViewController.h"
#import "GameKitHelper.h"
#import "SelectCarViewController.h"
#import "SKTAudio.h"

@interface HomeScreenViewController ()

@end

@implementation HomeScreenViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)playGame:(id)sender {

  [[SKTAudio sharedInstance]
    playSoundEffect:@"button_press.wav"];
    
  SelectCarViewController *carViewController =
    [self.storyboard instantiateViewControllerWithIdentifier:
     @"SelectCarViewController"];

  [self.navigationController 
    pushViewController:carViewController animated:YES];
}

- (IBAction)gameCenter:(id)sender {
  [[SKTAudio sharedInstance]
    playSoundEffect:@"button_press.wav"];
  [[GameKitHelper sharedGameKitHelper]
    showGKGameCenterViewController:self];
  
}

@end
