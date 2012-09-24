platform :osx, "10.8"

inhibit_all_warnings!

pod 'PXSourceList'
pod 'MagicalRecord', :head
pod 'BlocksKit'
pod 'SNRHUDKit',  :git => "https://github.com/irrationalfab/SNRHUDKit.git", :commit => "a0791e31b2b0619a570a31bf9cf9d5a07bd5b3d0"
pod 'INAppStoreWindow'
pod 'MAKVONotificationCenter', :head
pod 'AFNetworking'
pod 'DSFavIconManager'
pod 'ReactiveCocoa'

#pod 'Fragaria', :local => "~/Desktop/moritzhFragaria"
#pod 'SNRHUDKit', :local => "~/Desktop/SNRHUDKit"

post_install do | installer |
  "POST INSTALL"
  prefix_header = config.project_pods_root + 'Pods-prefix.pch'
  text = prefix_header.read.gsub(%{#import "CoreData+MagicalRecord.h"}, %{#define MR_ENABLE_ACTIVE_RECORD_LOGGING 0\n#import "CoreData+MagicalRecord.h"})
  prefix_header.open('w') do |file|
    file.write(text)
  end
end