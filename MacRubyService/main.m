//
//  main.m
//  MacRubyService
//
//  Created by Fabio Pelosin on 07/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#include <xpc/xpc.h>
#import <MacRuby/MacRuby.h>
#import "MacRubyServiceProtocol.h"

int main(int argc, char *argv[])
{
	return macruby_main("rb_main.rb", argc, argv);
}

