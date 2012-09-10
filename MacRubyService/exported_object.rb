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

  def specs_names
    Pod::Source.all_sets.map {|set| {"name" => set.name} }
  end


  # http://rubydoc.info/github/CocoaPods/CocoaPods/master/Pod/Source
  # http://rubydoc.info/github/CocoaPods/CocoaPods/master/Pod/Specification
  # http://rubydoc.info/github/CocoaPods/CocoaPods/master/Pod/Specification/Set
  #
  def specs
    Pod::Source.all_sets.map do |set|
      spec = set.specification
      hash = {}
      hash['versions'] = set.versions.map(&:to_s)
      %w|name version homepage summary description defined_in_file|.each do |attribute|
        hash[attribute] = spec.send(attribute).to_s
      end
      hash['available_platforms'] = spec.available_platforms.map(&:to_s)
      hash
    end
  end
end