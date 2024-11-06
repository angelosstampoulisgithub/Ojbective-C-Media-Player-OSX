//
//  AppDelegate.m
//  Objective-C-MediaPlayer-OSX
//
//  Created by Angelos Staboulis on 6/11/24.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
   
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

- (IBAction)mnuOpen:(id)sender {
    NSOpenPanel *openPanel = [[NSOpenPanel alloc] init];
    openPanel.allowsMultipleSelection = false;
    openPanel.canChooseDirectories = false;
    openPanel.canCreateDirectories = false;
    openPanel.canChooseFiles = true;
    [openPanel beginWithCompletionHandler:^(NSModalResponse result) {
        if (result == NSModalResponseOK){
            self->_filename = [[openPanel URL] filePathURL].path;
            ViewController *viewController = (ViewController *)[NSApplication sharedApplication].windows.firstObject.contentViewController;
            AVPlayer *player = [AVPlayer playerWithURL:[NSURL fileURLWithPath:self->_filename]];
            [viewController.playerView setPlayer:player];
        }
    }];
}

- (IBAction)mnuClose:(id)sender {
    exit(0);
}
@end
