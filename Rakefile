# encoding: utf-8

desc "Bootstrap the vendored dependencies"
task :vendor => %w| vendor:bundle vendor:ruby vendor:appvendor|

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
  task :bundle do
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
    sh "rm -rf AppVendor/gems"

    sh "cp -r  Vendor/ruby/ AppVendor/ruby"
    sh "cp -r  Vendor/bundler/ruby/1.9.1/ AppVendor/gems"

    # install_name_tool -id "@loader_path/../wxWidgets/lib/libwx_macu-2.8.0.4.0.dylib" libwx_macu-2.8.0.4.0.dylib
    linked_libs = `otool -L Vendor/bundler/ruby/1.9.1/gems/xcodeproj-0.3.3/ext/xcodeproj/xcodeproj_ext.bundle`
    fail("External dependendecies with user specific paths") if linked_libs.include?('/Users')

    # removed the uneeded files
    sh "rm -rf AppVendor/ruby/src"
    sh "rm -rf AppVendor/gems/cache"
    sh "rm -rf AppVendor/gems/specifications"
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

# Prints a sucess message :-)
def puts_success(message, dir = nil)
  m = "\n[\e[0;32m✔\e[0m] #{message}"
  m << " (#{dir} - #{`du -md 0 #{dir}`.split(' ')[0]}M)" if dir
  puts m << "\n\n"
end

# Returns the absolute paht of a path relative the the _Rakefile_
def relative_path(path)
  path = File.expand_path(File.dirname(__FILE__) + '/' + path)
  "'#{path}'"
end
