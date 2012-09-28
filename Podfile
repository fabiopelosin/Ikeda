platform :osx, "10.8"

inhibit_all_warnings!

pod 'PXSourceList'
pod 'MagicalRecord'
pod 'BlocksKit'
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
