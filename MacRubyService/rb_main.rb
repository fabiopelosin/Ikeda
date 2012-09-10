#
#  rb_main.rb
#  CocoaPodsApp
#
#  Created by Fabio Pelosin on 07/09/12.
#  Copyright 2012 CocoaPods. All rights reserved.
#

framework 'Cocoa'

dir_path = NSBundle.mainBundle.resourcePath.fileSystemRepresentation

# Load all the bundled Gems so we don't need to use ruby gems
gems_path = File.expand_path(File.join(dir_path, '/../../../../Frameworks/gems/gems'))
Dir.glob(File.join(gems_path, '*')).each do |path|
  $:.unshift(File.join(path, '/lib'))
end

main = File.basename(__FILE__, File.extname(__FILE__))
dir_path = NSBundle.mainBundle.resourcePath.fileSystemRepresentation
Dir.glob(File.join(dir_path, '*.{rb,rbo}')).map { |x| File.basename(x, File.extname(x)) }.uniq.each do |path|
  if path != main
    require(path)
  end
end

class ListenerDelegate
  def listener(listener, shouldAcceptNewConnection:newConnection)
    newConnection.exportedInterface = NSXPCInterface.interfaceWithProtocol(NSProtocolFromString("MacRubyServiceProtocol"))
    newConnection.exportedObject = ExportedObject.new
    newConnection.resume
    true
  end
end

listener = NSXPCListener.serviceListener
listener.delegate = ListenerDelegate.new
listener.resume

exit(EXIT_FAILURE)


