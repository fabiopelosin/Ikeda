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

  # http://rubydoc.info/github/CocoaPods/CocoaPods/master/Pod/Specification/Set
  #
  def all_sets
    hash = {}
    Pod::Source.all_sets.map do |set|
      hash = {}
      hash['name'] = set.name
      hash['versions'] = set.versions.map(&:to_s)
      hash
    end
  end

  # http://rubydoc.info/github/CocoaPods/CocoaPods/master/Pod/Source
  # http://rubydoc.info/github/CocoaPods/CocoaPods/master/Pod/Specification
  def specs
    Pod::Source.all_sets.map do |set|
      spec = set.specification
      spec_to_hash(spec)
    end
  end

  def specs(arguments)
    all_sets = Pod::Source.all_sets
    arguments['names'].map do |name|
      set = all_sets.find { |set| set.name == name }
      spec_to_hash(set.specification)
    end
  end

  def spec_to_hash(spec)
    hash = {}
    %w|name version homepage summary description defined_in_file|.each do |attribute|
      hash[attribute] = spec.send(attribute).to_s
    end
    hash['supports_ios'] = spec.available_platforms.include?(:ios)
    hash['supports_osx'] = spec.available_platforms.include?(:osx)
    hash
  end
end
