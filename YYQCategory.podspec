#
# Be sure to run `pod lib lint YYQCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YYQCategory'
  s.version          = '0.1.0'
  s.summary          = '常用类别'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
常用类别,收集一些方便用于开发的类别
                       DESC

  s.homepage         = 'https://github.com/yyqxiaoyin/YYQCategory'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yyqxiaoyin' => '357491060@qq.com' }
  s.source           = { :git => 'https://github.com/yyqxiaoyin/YYQCategory.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.2'

  s.source_files = 'YYQCategory/Classes/**/*'

  s.subspec 'CALayer' do |ss|
  ss.source_files = "YYQCategory/Classes/CALayer/CALayer+YYQExtension.{h,m}"
  end
  s.subspec 'NSArray' do |ss|
  ss.source_files = "YYQCategory/Classes/NSArray/NSArray+YYQExtension.{h,m}"
  end



  
  # s.resource_bundles = {
  #   'YYQCategory' => ['YYQCategory/Assets/*.png']
  # }

  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
