Pod::Spec.new do |spec|
  spec.name         = "HiveAdizAdapterPangle"
  spec.version      = "3.0.0"
  spec.summary      = "HiveAdizAdapterPangle optional framework"
  spec.description  = "HiveAdizAdapterPangle to use ad service with Hive SDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveAdiz-iOS/releases/download/#{spec.version}/Hive_Adiz_iOS_Adapter_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_Adiz_iOS_Adapter_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HiveAdizAdapterPangle.xcframework"
  
  spec.dependency 'GoogleMobileAdsMediationPangle', '6.5.0.8.0'
  spec.dependency 'HiveAdiz', "#{spec.version}"
end
