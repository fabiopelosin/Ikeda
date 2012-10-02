#
#  exported_object.rb
#  CocoaPodsApp
#
#  Created by Fabio Pelosin on 08/09/12.
#  Copyright 2012 CocoaPods. All rights reserved.
#

require 'cocoapods'
require 'active_support/core_ext/array/conversions'

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
      set_to_hash(set)
    end
  end

  def specs(arguments)
    all_sets = Pod::Source.all_sets
    arguments['names'].map do |name|
      set = all_sets.find { |set| set.name == name }
      set_to_hash(set)
    end
  end

  # Uses the attributes of CPSpecification as the keys. 
  #
  def set_to_hash(set)
    return {} unless set
    pod = Pod::UI::UIPod.new(set)

    hash = {}
    %w|name version versions authors homepage summary license|.each do |attribute|
      hash[attribute] = pod.send(attribute).to_s
    end

    hash['sourceURL']       = pod.source_url
    hash['specDescription'] = pod.description
    hash['subspecs']        = pod.subspecs.map(&:name) if pod.subspecs
    hash['definedInFile']   = pod.spec.defined_in_file.to_s
    hash['supportsIOS']     = pod.spec.available_platforms.include?(:ios)
    hash['supportsOSX']     = pod.spec.available_platforms.include?(:osx)
    hash
  end

  def repos
    Pod::Source.all.map do |source|
      hash = {}
      hash['name'] = source.name
      hash['path'] = source.path.to_s
      hash
    end
  end

  def needs_setup
    dir = (Pod::Config.instance.repos_dir + 'master')
    r = dir.exist? && Pod::Command::Repo::compatible?('master')
    NSLog r ? "OK" : "FALSE"
    r
  end
end
