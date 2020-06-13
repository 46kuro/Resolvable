#
# Be sure to run `pod lib lint Injectable.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Injectable'
  s.version          = '0.0.2'
  s.summary          = 'Static dependency injection framework for Swift.'
  s.homepage         = 'https://github.com/46kuro/Injectable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '46kuro' => 'https://twitter.com/kuroFront46' }
  s.source           = { :git => 'https://github.com/46kuro/Injectable.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'Sources/Injectable/*.swift'
  s.swift_versions = ['5.1', '5.2']
  # s.resource_bundles = {
  #   'Injectable' => ['Injectable/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
end
