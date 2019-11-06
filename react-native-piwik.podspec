require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "react-native-piwik"
  s.version        = package_json["version"]
  s.summary        = package_json["description"]
  s.homepage       = "https://github.com/BonifyByForteil/react-native-piwik"
  s.license        = package_json["license"]
  s.author         = { package_json["author"] => package_json["author"] }
  s.platform       = :ios, "9.0"
  s.source         = { :git => "#{package_json["repository"]["url"]}.git", :tag => "#{s.version}" }
  s.source_files   = 'ios/PiwikTracker/**/*.{h,swift}'
  s.swift_version  = '4.2'
  s.dependency 'React'


  s.subspec "BNFPiwik" do |ss|
      ss.source_files = "ios/BNFPiwik/**/*.{h,m}"
  end

end