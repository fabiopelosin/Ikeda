# encoding: utf-8

namespace :requirements do
  desc "Adds an id to stories without one"
  task :autofill do
    sh "bundle exec saga autofill Design/requirements.txt > /tmp/requirements.txt && rm Design/requirements.txt && mv /tmp/requirements.txt Design/requirements.txt"
  end

  desc "Convert Design/requirements.txt to HTML"
  task :convert do
    sh "bundle exec saga convert --template Design/RequirementsTemplate Design/requirements.txt > Design/requirements.html"
  end
end

desc "Bootstrap the vendored dependencies"
task :vendor => %w| vendor:ruby vendor:gem vendor:appvendor|

namespace :vendor do
  desc "Updates the vendored Ruby"
  task :ruby do
    # http://yehudakatz.com/2012/06/
    # https://github.com/tokaido/tokaidoapp
    # https://github.com/sm/sm
    unless File.exists?(File.expand_path("~/.sm/bin/sm"))
      raise "Missing S{cripting,ystem,tack} Management (SM) Framework\nInstall with `curl -L https://get.smf.sh | sh'"
    end
    ruby_dir = relative_path("vendor/ruby")

    sh "sm libyaml package install"

    sh "sm ext install tokaidoapp tokaido/tokaidoapp"
    sh "sm pkg-config install static"
    sh "sm tokaidoapp dependencies"
    sh "sm tokaidoapp package install"
    sh "rm -rf   #{ruby_dir}"
    sh "mkdir -p #{ruby_dir}"
    sh "cp -RH ~/.sm/pkg/versions/tokaidoapp/active/ #{ruby_dir}"

    linked_libs = `otool -L Vendor/ruby/lib/ruby/1.9.1/x86_64-darwin12.2.0/psych.bundle`
    fail("External dependendecies not statically linked") if linked_libs.include?('libyaml')

    puts_success "Self contained ruby installed", ruby_dir
  end

  desc "Updates the vendored CocoaPods gem and it dependencies using AppGemfile as a Gemfile"
  task :gem do
    # Bundler and RVM don't like when you install
    # a bundle from (the automatic) bundle exec rake.
    # Therefore, to prevent issues, there should be
    # no Gemfile in the root of the project.
    #
    sh "mkdir -p Vendor"
    Dir.chdir "Vendor" do
      sh "bundle install --path bundler"
    end
    puts_success "Gems downloaded", "Vendor/bundler"
  end

  desc "Prepares the app vendor folder"
  task :appvendor do
    sh "rm -rf AppVendor/ruby"
    sh "cp -r  Vendor/ruby/ AppVendor/ruby"
    # TODO: Need a better way to do this :-)
    sh "cp Vendor/libruby.1.9.1.dylib AppVendor/ruby/lib/"
    sh "rm -rf AppVendor/ruby/src"


    sh "rm -rf AppVendor/gems"
    sh "cp -r  Vendor/bundler/ruby/1.9.1/ AppVendor/gems"
    # TODO: Offensive hack!
    # Patch CocoaPods either with an environment variable or
    # removing the call to Bundler.
    File.open("AppVendor/gems/gems/cocoapods-0.14.0/bin/pod", 'w') do |f|
      f.write("#!/usr/bin/env ruby\nSTDOUT.sync = true\nrequire 'cocoapods'\nPod::Command.run(*ARGV)")
    end

    libs = `otool -L AppVendor/gems/gems/xcodeproj-0.3.3/ext/xcodeproj_ext.bundle`
    local_libruby = libs.match(/(.*.libruby.1.9.1.dylib).*/)[1].lstrip
    puts "local libruby #{local_libruby}"
    Dir.glob('AppVendor/gems/**/*.bundle') do |bundle|
      sh "install_name_tool -change #{local_libruby} '@executable_path/../lib/libruby.1.9.1.dylib' #{bundle}"
      linked_libs = `otool -L #{bundle}`
      fail("Detected extensions with user specific paths\n#{linked_libs}") if linked_libs.include?('/Users')
    end

    # removed the uneeded files
    sh "rm -rf AppVendor/gems/cache"
    puts_success "AppVendor folder prepared", "AppVendor"
  end
end



desc "Embeds MacRuby in the XPC service (used by Xcode)"
task :deployment do
  build_dir = ENV['TARGET_BUILD_DIR']
  project_name = ENV['PROJECT_NAME']
  xpc_bundle = File.join(build_dir, project_name + '.app', 'Contents/XPCServices/org.cocoapods.macrubyservice.xpc')
  sh "/usr/local/bin/macruby_deploy --embed #{xpc_bundle}"
end

# Helpers

# Prints a nice success message :-)
def puts_success(message, dir = nil)
  m = "\n[\e[0;32m✔\e[0m] #{message}"
  m << " (#{dir} - #{`du -md 0 #{dir}`.split(' ')[0]}M)" if dir
  puts m << "\n\n"
end

# Returns the absolute path of a path relative the _Rakefile_
def relative_path(path)
  path = File.expand_path(File.dirname(__FILE__) + '/' + path)
  "'#{path}'"
end

