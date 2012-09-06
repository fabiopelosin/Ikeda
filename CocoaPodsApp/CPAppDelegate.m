//
//  CPAppDelegate.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 01/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPAppDelegate.h"
#import "TUIKit.h"
#import "CPPodsTableView.h"
#import "CPSpec.h"

@implementation CPAppDelegate {
    CPPodsTableView *_table;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	TUINSView* contentView = self.window.contentView;
	_table = [[CPPodsTableView alloc] initWithFrame:contentView.bounds];
    contentView.rootView = _table;

    [self testRuby];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return TRUE;
}

- (void)testRuby {
    NSString *podPath = [[NSBundle mainBundle] pathForAuxiliaryExecutable:@"pod"];
    NSMutableString *output = [NSMutableString new];

    NSPipe *pipe;
    pipe = [NSPipe pipe];
    NSFileHandle *file;
    file = [pipe fileHandleForReading];
    file.readabilityHandler = ^(NSFileHandle *file) {
        NSData *data = file.availableData;
        NSString* string = [[NSString alloc] initWithData:data encoding:[NSString defaultCStringEncoding]];
        [output appendString:string];
    };

    NSTask *task;
    task = [[NSTask alloc] init];
    [task setLaunchPath:podPath];
    [task setArguments:@[@"--no-color", @"list"]];
    //[task setArguments:@[@"--version"]];
    [task setStandardOutput: pipe];
    [task setStandardError:pipe];
    [task setStandardInput:[NSPipe pipe]];
    task.terminationHandler = ^(NSTask *task) {
        NSData *data = [task.standardOutput fileHandleForReading].readDataToEndOfFile;
        NSString* string = [[NSString alloc] initWithData:data encoding:[NSString defaultCStringEncoding]];
        [output appendString:string];
        int status = [task terminationStatus];

        if (status == 0)
            NSLog(@"Terminated - OK");
        else
            NSLog(@"Terminated - ERROR");

        NSMutableArray *spec_strings = [[output componentsSeparatedByString:@"\n\n"] mutableCopy];
        [spec_strings removeObjectAtIndex:0];
        [spec_strings removeLastObject];
        [spec_strings removeLastObject];

        NSMutableArray *specs = [NSMutableArray new];
        [spec_strings enumerateObjectsUsingBlock:^(NSString* spec_string, NSUInteger idx, BOOL *stop) {
            [specs  addObject:[CPSpec specFromString:spec_string]];
        }];
        dispatch_async(dispatch_get_main_queue(), ^{
            _table.specs = specs;
        });
    };
    [task launch];
}

@end
