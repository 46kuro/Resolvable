#
# Be sure to run `pod lib lint Resolvable.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Resolvable'
  s.version          = '0.1.0'
  s.summary          = 'Static dependency injection framework for Swift.'
  s.homepage         = 'https://github.com/46kuro/Injectable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '46kuro' => 'https://twitter.com/kuroFront46' }
  s.source           = { :git => 'https://github.com/46kuro/Injectable.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'Injectable/Classes/**/*'
  s.dependency 'SourceKitten', '~> 0.29.0'
  s.dependency 'Commander', '~> 0.9.1'
end
