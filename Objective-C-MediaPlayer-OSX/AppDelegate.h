//
//  AppDelegate.h
//  Objective-C-MediaPlayer-OSX
//
//  Created by Angelos Staboulis on 6/11/24.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property NSWindow *window;
- (IBAction)mnuClose:(id)sender;
- (IBAction)mnuOpen:(id)sender;
@property NSString *filename;
@end

