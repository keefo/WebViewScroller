//
//  WebViewScrollerAppDelegate.m
//  WebViewScroller
//
//  Created by Keefo on 11-03-02.
//  Copyright 2011 Beyondcow. All rights reserved.
//

#import "WebViewScrollerAppDelegate.h"
#import "LXScroller.h"

@implementation WebViewScrollerAppDelegate

- (void)awakeFromNib
{

	LXScroller *scroller=[[LXScroller alloc] init];
	[[[[[webview mainFrame] frameView] documentView] enclosingScrollView] setVerticalScroller:scroller];
	[scroller release];
	
	scroller=[[LXScroller alloc] init];
	[[[[[webview mainFrame] frameView] documentView] enclosingScrollView] setHorizontalScroller:scroller];
	[scroller release];
	
	[[webview mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
	
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
}

@end
