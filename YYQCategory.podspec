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

  # s.source_files = 'YYQCategory/Classes/**/*'

  s.subspec 'CALayer' do |layer|
  layer.source_files = "YYQCategory/Classes/YYQCategory/CALayer/**/*"
  end
  s.subspec 'NSArray' do |array|
  array.source_files = "YYQCategory/Classes/YYQCategory/NSArray/**/*"
  end
  s.subspec 'NSData' do |data|
  data.source_files = "YYQCategory/Classes/YYQCategory/NSData/**/*"
  end
  s.subspec 'NSDate' do |date|
  date.source_files = "YYQCategory/Classes/YYQCategory/NSDate/**/*"
  end
  s.subspec 'NSObject' do |object|
  object.source_files = "YYQCategory/Classes/YYQCategory/NSObject/**/*"
  end
  s.subspec 'NSString' do |string|
  string.source_files = "YYQCategory/Classes/YYQCategory/NSString/**/*"
  end
  s.subspec 'UIApplication' do |application|
  application.source_files = "YYQCategory/Classes/YYQCategory/UIApplication/**/*"
  end
  s.subspec 'UIBarButtonItem' do |barButtonItem|
  barButtonItem.source_files = "YYQCategory/Classes/YYQCategory/UIBarButtonItem/**/*"
  end
  s.subspec 'UIButton' do |button|
  button.source_files = "YYQCategory/Classes/YYQCategory/UIButton/**/*"
  end
  s.subspec 'UIColor' do |color|
  color.source_files = "YYQCategory/Classes/YYQCategory/UIColor/**/*"
  end
  s.subspec 'UIFont' do |font|
  font.source_files = "YYQCategory/Classes/YYQCategory/UIFont/**/*"
  end
  s.subspec 'UIImage' do |image|
  image.source_files = "YYQCategory/Classes/YYQCategory/UIImage/**/*"
  end
  s.subspec 'UIImageView' do |imageView|
  imageView.source_files = "YYQCategory/Classes/YYQCategory/UIImageView/**/*"
  end
  s.subspec 'UILabel' do |label|
  label.source_files = "YYQCategory/Classes/YYQCategory/UILabel/**/*"
  end
  s.subspec 'UIScrollView' do |scrollView|
  scrollView.source_files = "YYQCategory/Classes/YYQCategory/UIScrollView/**/*"
  end
  s.subspec 'UIView' do |view|
  view.source_files = "YYQCategory/Classes/YYQCategory/UIView/**/*"
  end

  
  # s.resource_bundles = {
  #   'YYQCategory' => ['YYQCategory/Assets/*.png']
  # }

  s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
