platform :osx, '10.8'

pod 'PXSourceList'
pod 'MagicalRecord'
pod 'BlocksKit'
pod 'INAppStoreWindow'
pod 'MAKVONotificationCenter', :head
pod 'AFNetworking'
pod 'DSFavIconManager'
pod 'ReactiveCocoa'
# pod 'DSSyntaxKit', :local => '~/Desktop/DSSyntaxKit'
 pod 'DSSyntaxKit', :podspec => 'https://raw.github.com/Discontinuity-srl/DSSyntaxKit/master/DSSyntaxKit.podspec'

post_install do | installer |
  prefix_header = config.project_pods_root + 'Pods-prefix.pch'
  text = prefix_header.read.gsub(%{#import "CoreData+MagicalRecord.h"}, %{#define MR_ENABLE_ACTIVE_RECORD_LOGGING 0\n#import "CoreData+MagicalRecord.h"})
  prefix_header.open('w') do |file|
    file.write(text)
  end
end
