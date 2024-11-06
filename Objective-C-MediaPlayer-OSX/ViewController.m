//
//  ViewController.m
//  Objective-C-MediaPlayer-OSX
//
//  Created by Angelos Staboulis on 6/11/24.
//

#import "ViewController.h"
#import "AppDelegate.h"
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)viewDidLayout{
    [_playerView setFrame:self.view.frame];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
