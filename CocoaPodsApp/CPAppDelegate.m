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
#import "CPMacRubyServiceProtocol.h"

@implementation CPAppDelegate {
    CPPodsTableView *_table;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	TUINSView* contentView = self.window.contentView;
	_table = [[CPPodsTableView alloc] initWithFrame:contentView.bounds];
    contentView.rootView = _table;

    [self testRuby];
    [self startMacRubyConnection];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return TRUE;
}

- (void)startMacRubyConnection {
    NSXPCInterface *myCookieInterface = [NSXPCInterface interfaceWithProtocol:@protocol(CPMacRubyServiceProtocol)];
    NSXPCConnection *myConnection = [[NSXPCConnection alloc] initWithServiceName:@"org.cocoapods.macrubyservice"];
    myConnection.remoteObjectInterface = myCookieInterface;
    [myConnection resume];
    id<CPMacRubyServiceProtocol> proxy = [myConnection remoteObjectProxyWithErrorHandler:^(NSError *error) {
        NSLog(@"%@", error);
    }];
    myConnection.invalidationHandler = ^{
        NSLog(@"CONNECTION INVALIDATED");
    };
    
    [proxy cocoapodsVersion:^(NSString *version) {
        NSLog(@"Version: %@", version);
    }];

    [proxy specs:^(NSArray *spec_dicts) {
        NSMutableArray *specs = [NSMutableArray new];
        [spec_dicts enumerateObjectsUsingBlock:^(NSDictionary* spec_dict, NSUInteger idx, BOOL *stop) {
            [specs  addObject:[CPSpec specFromDict:spec_dict]];
        }];
        dispatch_async(dispatch_get_main_queue(), ^{
            _table.specs = specs;
        });
    }];
    NSLog(@"COMPLETED CONNECTION REQUESTS");
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
    [task setArguments:@[@"--no-color", @"--version"]];
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
        NSLog(@"COMMAND LINE VERSION:%@", output);

    };
    [task launch];
}

@end
