#
#  exported_object.rb
#  CocoaPodsApp
#
#  Created by Fabio Pelosin on 08/09/12.
#  Copyright 2012 CocoaPods. All rights reserved.
#

require 'cocoapods'

class ExportedObject < AbstractExportedObject
  Pod = ::Pod

  def version
    Pod::VERSION.to_s
  end

  # See http://rubydoc.info/github/CocoaPods/CocoaPods/master/Pod/Source
  # See http://rubydoc.info/github/CocoaPods/CocoaPods/master/Pod/Specification
  #
  def specs
    Pod::Source.all_sets.map do |set|
      spec = set.specification
      hash = {}
      %w|name version homepage summary description defined_in_file|.each do |attribute|
        hash[attribute] = spec.send(attribute).to_s
      end
      # available_platforms
      hash
    end
  end
end