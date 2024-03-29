Pod::Spec.new do |s|
  s.name         = "QRCategories"
  s.version      = "0.0.1"
  s.summary      = "Objective-C Category-based Utility Library."
  s.description  = <<-DESC
====

QRCategories
====

Objective-C Category-based Utility Library.

                   DESC
  s.homepage     = "<not yet>"
#  s.screenshots  = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license      = 'MIT'
  s.author       = { "Taro Kobayashi" => "9re.3000@gmail.com" }
  s.source       = { :git => "https://github.com/9re/QRCategories.git", :tag => s.version.to_s }

  s.platform     = :ios, '6.0'
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true

  s.source_files = 'Classes'

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'
  # s.dependency 'JSONKit', '~> 1.4'
end
