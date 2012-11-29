//
//  CPSpecDetailViewController.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 14/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPSpecDetailViewController.h"

#import "AFNetworking.h"
#import "CPGemBridgeManager.h"
#import "CPBackgroundView.h"
#import "DSFaviconManager.h"

@interface CPSpecDetailViewController () <NSSharingServicePickerDelegate, NSURLConnectionDelegate>

@property (strong) IBOutlet CPBackgroundView *backgroundView;
@property (weak) IBOutlet NSTextField *authorsLabel;
@property (weak) IBOutlet NSButton *shareButton;
@property (weak) IBOutlet NSTextField *NameLabel;
@property (weak) IBOutlet NSButton *cocoaControlsButton;
@property (weak) IBOutlet NSTextField *gitHubStarsLabel;
@property (weak) IBOutlet NSTextField *gitHubForksLabel;
@property (weak) IBOutlet NSImageView *favIconImageView;

@end

@implementation CPSpecDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(specsDidUpdateNotification:)
                                                   name:kCPGemBridgeManagerDidCompleteUpdateNotification
                                                 object:nil];
    }
    
    return self;
}

- (void)dealloc {
  [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void) specsDidUpdateNotification:(NSNotification*)notification {
  [self updateInterface];
}

- (void)awakeFromNib {
  [_backgroundView setBackgroundColor:[NSColor whiteColor]];
  [self updateInterface];
  [_shareButton setImage:[NSImage imageNamed:NSImageNameShareTemplate]];
}

- (void)updateInterface {

  _favIconImageView.image = [[DSFavIconManager sharedInstance] iconForURL:[NSURL URLWithString:_spec.homepage] downloadHandler:^(NSImage *icon) {
    _favIconImageView.image = icon;
  }];

  if ([_spec.authors rangeOfString:@","].location == NSNotFound) {
    _authorsLabel.stringValue = @"Author";
  } else {
    _authorsLabel.stringValue = @"Authors";
  }
}

- (void)setSpec:(CPSpecification *)spec {
  _spec = spec;
  [[CPGemBridgeManager sharedInstance] updateSpec:spec];
  [self updateInterface];
  [self updateGitHubInfo];
  [self updateCocoaControlsButton];
}


#pragma mark - CocoaControls

- (NSURL *)cocoaControlsURL {
  NSString *baseURL = @"http://www.cocoacontrols.com/platforms/ios/controls";
  NSString *urlString = [NSString stringWithFormat:@"%@/%@", baseURL, [_spec.name lowercaseString]];
  return [NSURL URLWithString:urlString];
}

- (void)updateCocoaControlsButton {
  // TODO: need to ask to cocoacontrols what they think about this integration
  // and eventually integrating the screenshots or the rating.
#if !DEBUG
  return;
#endif

  NSURLRequest* request = [NSURLRequest requestWithURL:[self cocoaControlsURL]];
  NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:self];
  [connection start];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
  if ([response respondsToSelector:@selector(statusCode)])
  {
    NSInteger statusCode = [((NSHTTPURLResponse *)response) statusCode];
    if (statusCode == 200) {
      [_cocoaControlsButton setHidden:NO];
    }
    [connection cancel];
  }
}


#pragma mark - GitHub

- (void)updateGitHubInfo {
  NSRange gitHubRange = [_spec.sourceURL rangeOfString:@"github.com/"];
  if (gitHubRange.location == NSNotFound) {
    return;
  }

  NSUInteger keyStartIndex = gitHubRange.location + gitHubRange.length;
  NSString *repoKey = [_spec.sourceURL substringFromIndex:keyStartIndex];
  repoKey = [repoKey stringByReplacingOccurrencesOfString:@".git" withString:@""];

  NSString *baseURL = @"https://api.github.com/repos";
  NSString *urlString = [NSString stringWithFormat:@"%@/%@", baseURL, repoKey];
  NSURL *url = [NSURL URLWithString:urlString];
  NSURLRequest *request = [NSURLRequest requestWithURL:url];
  // TODO: The operation is raising a lot of catched execptions... should investigate
  AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, NSDictionary* JSON) {
    dispatch_async(dispatch_get_main_queue(), ^{
      // JSON[@"owner"][@"avatar_url"]
      [_gitHubForksLabel setStringValue:JSON[@"forks"]];
      [_gitHubStarsLabel setStringValue:JSON[@"watchers"]];
    });
  } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
    NSLog(@"JSON ERROR: %@", request.URL);
    NSLog(@"JSON ERROR: %@", error);
  }];
  [operation start];
}


#pragma mark - Interface Builder Actions
- (IBAction)cocoaControlsAction:(id)sender {
  [[NSWorkspace sharedWorkspace] openURL:[self cocoaControlsURL]];
}

- (IBAction)openPodspecAction:(id)sender {
    if (![[NSWorkspace sharedWorkspace] openFile:self.spec.definedInFile])
    {
        NSString *defaultApplication = (__bridge NSString *)(LSCopyDefaultRoleHandlerForContentType(kUTTypePlainText, kLSRolesEditor));
        
        if ([[NSWorkspace sharedWorkspace] openFile:self.spec.definedInFile
                                    withApplication:[[NSWorkspace sharedWorkspace]
                                                     absolutePathForAppBundleWithIdentifier:defaultApplication]])
        {
            LSSetDefaultRoleHandlerForContentType(CFSTR("public.podspec"), kLSRolesEditor, (__bridge CFStringRef)defaultApplication);
        } else {
            NSLog(@"Failed to open podspec at: %@", self.spec.definedInFile);
        }
    }
}

- (IBAction)openHomePageAction:(id)sender {
  NSURL *url = [NSURL URLWithString:_spec.homepage];
  [[NSWorkspace sharedWorkspace] openURL:url];
}

- (IBAction)shareButtonAction:(NSButton*)sender {
  NSArray *items = @[
  @"#cocoapods", _spec.name, _spec.summary, _spec.homepage
  ];
  NSSharingServicePicker *picker = [[NSSharingServicePicker alloc] initWithItems:items];
  picker.delegate = self;
  [picker showRelativeToRect:sender.bounds ofView:sender preferredEdge:CGRectMinYEdge];
}

@end
