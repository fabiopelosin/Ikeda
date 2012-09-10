# encoding: utf-8

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

desc "Updates the vendored dependencies"
namespace :vendor do
  desc "Updates the vendored CocoaPods gem and it dependencies"
  task :bundle do
    # TODO: update the bin stub to not require bundler and their shebang to point to custom ruby.
    destination_dir =  relative_path("vendor/bundler")
    sh "bundle install --path #{destination_dir}"

    puts_success("Installed CocoaPods Gem", destination_dir)
  end

  desc "Updates the vendored Ruby"
  task :ruby do
    # https://github.com/tokaido/tokaidoapp
    # https://github.com/sm/sm
    unless File.exists?(File.expand_path("~/.sm/bin/sm"))
      raise "Missing S{cripting,ystem,tack} Management (SM) Framework\nInstall with `curl -L https://get.smf.sh | sh'"
    end
    ruby_dir = relative_path("vendor/ruby")
    # sh "sm ext install tokaidoapp tokaido/tokaidoapp"
    # sh "sm tokaidoapp dependencies"
    # sh "sm tokaidoapp install"
    sh "rm -rf #{ruby_dir}"
    sh "cp -RH ~/.sm/pkg/versions/tokaidoapp/active/ #{ruby_dir}"
    sh "rm -rf #{ruby_dir}/src" # removed the uneeded src sym link
    puts_success "Self contained ruby installed",ruby_dir
  end
end

desc "Build scripts to be called by Xcode to package the final app."
namespace :appvendor do
  desc "Prepares the app vendor folder"
  task :prepare do
    vendor_dir          =  relative_path("Vendor")
    vendor_ruby_dir     =  relative_path("Vendor/ruby/")
    vendor_ruby_bin     =  relative_path("Vendor/ruby/bin/ruby")
    vendor_gems_dir     =  relative_path("Vendor/bundler/ruby/1.9.1/")
    app_vendor_dir      =  relative_path("AppVendor")
    app_vendor_ruby_dir =  relative_path("AppVendor/ruby")
    app_vendor_gems_dir =  relative_path("AppVendor/gems")
    app_vendor_bin_dir  =  relative_path("AppVendor/bin")

    sh "rm -rf #{app_vendor_ruby_dir}"
    sh "cp -r #{vendor_ruby_dir} #{app_vendor_ruby_dir}"
    sh "rm -rf #{app_vendor_gems_dir}"
    sh "cp -r #{vendor_gems_dir} #{app_vendor_gems_dir}"
  end
end

# task :build => 'vendor:all'
# task :default => :build

