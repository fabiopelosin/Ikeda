# encoding: utf-8

desc "Bootstrap the vendored dependencies"
task :vendor => %w| vendor:bundle vendor:ruby vendor:appvendor|

namespace :vendor do
  desc "Updates the vendored Ruby"
  task :ruby do
    # https://github.com/tokaido/tokaidoapp
    # https://github.com/sm/sm
    unless File.exists?(File.expand_path("~/.sm/bin/sm"))
      raise "Missing S{cripting,ystem,tack} Management (SM) Framework\nInstall with `curl -L https://get.smf.sh | sh'"
    end
    ruby_dir = relative_path("vendor/ruby")

    sh "sm ext install tokaidoapp tokaido/tokaidoapp"
    sh "sm tokaidoapp dependencies"
    sh "sm tokaidoapp install"
    sh "rm -rf #{ruby_dir}"
    sh "mkdir -p #{ruby_dir}"
    sh "cp -RH ~/.sm/pkg/versions/tokaidoapp/active/ #{ruby_dir}"
    puts_success "Self contained ruby installed",ruby_dir
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
  end

  desc "Prepares the app vendor folder"
  task :appvendor do
    sh "rm -rf AppVendor/ruby"
    sh "rm -rf AppVendor/gems"

    sh "cp -r  Vendor/ruby/ AppVendor/ruby"
    sh "cp -r  Vendor/bundler/ruby/1.9.1/ AppVendor/gems"

    # removed the uneeded files
    sh "rm -rf AppVendor/ruby/src"
    sh "rm -rf AppVendor/gems/cache"
    sh "rm -rf AppVendor/gems/specifications"
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
