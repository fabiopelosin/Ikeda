#
#  rb_main.rb
#  CocoaPodsApp
#
#  Created by Fabio Pelosin on 07/09/12.
#  Copyright 2012 CocoaPods. All rights reserved.
#

framework 'Cocoa'

main = File.basename(__FILE__, File.extname(__FILE__))
dir_path = NSBundle.mainBundle.resourcePath.fileSystemRepresentation
Dir.glob(File.join(dir_path, '*.{rb,rbo}')).map { |x| File.basename(x, File.extname(x)) }.uniq.each do |path|
  if path != main
    require(path)
  end
end

# Load all the bundled Gems so we don't need to use ruby gems
# Todo use this approach in the bin wrappers
gems_path = File.expand_path(File.join(dir_path, '/../../../../Frameworks/gems/gems'))
Dir.glob(File.join(gems_path, '*')).each do |path|
  $:.unshift(File.join(path, '/lib'))
end

require 'cocoapods'

#load_bridge_support_file(File.join(dir_path, 'CPMacRubyServiceProtocol.bridgesupport'))

class ExportedObject < CPMacRubyProxy
  Pod = ::Pod

  def _cocoapodsVersion
    Pod::VERSION.to_s
  end

  def _specs
    Pod::Source.all_sets.map do |set|
      spec = set.specification
      hash = {}
      # See http://rubydoc.info/github/CocoaPods/CocoaPods/master/Pod/Specification
      #
      %w|name version homepage summary description defined_in_file|.each do |attribute|
        hash[attribute] = spec.send(attribute).to_s
      end
      # available_platforms
      # available_platforms
      hash
    end
  end
end

class ListenerDelegate
  def listener(listener, shouldAcceptNewConnection:newConnection)
    NSLog("SERVICE: shouldAcceptNewConnection")
    newConnection.exportedInterface = NSXPCInterface.interfaceWithProtocol(NSProtocolFromString("CPMacRubyServiceProtocol"))
    newConnection.exportedObject = ExportedObject.new
    newConnection.resume
    true
  end
end

listener = NSXPCListener.serviceListener
listener.delegate = ListenerDelegate.new
listener.resume

exit(EXIT_FAILURE)


