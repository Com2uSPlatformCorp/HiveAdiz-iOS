Pod::Spec.new do |spec|
  spec.name         = "HiveAdiz"
  spec.version      = "2.1.0-beta2"
  spec.summary      = "HiveAdiz optional framework"
  spec.description  = "HiveAdiz to use ad service with Hive SDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "12.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveAdiz-iOS/releases/download/#{spec.version}/Hive_Adiz_iOS_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_Adiz_iOS_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HiveAdiz.xcframework"
  spec.resource = "#{$vendored_frameworks_path}/HiveAdizResource.bundle"
  spec.frameworks = 'AppTrackingTransparency'
  
  spec.dependency 'Google-Mobile-Ads-SDK', '11.10.0'
  spec.dependency 'GoogleUserMessagingPlatform', '2.6.0'
end
