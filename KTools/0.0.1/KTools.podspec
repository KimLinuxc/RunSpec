#
# Be sure to run `pod lib lint KTools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KTools'
  s.version          = '0.0.1'
  s.summary          = 'A short description of KTools.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  主要用于存放基础工具类
                       DESC

  s.homepage         = 'https://github.com/KimLinuxc/KTools'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'KimLinuxc' => '1038239369@qq.com' }
  s.source           = { :git => 'https://github.com/KimLinuxc/KTools.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  s.frameworks = 'UIKit'

  #s.source_files = 'KTools/Classes/**/*'

  s.subspec '1_Tools' do |st|
    st.source_files = 'KTools/1_Tools/**/*.{h,m}'
  end #Tools
  
  s.subspec '2_Category' do |sc|
    sc.source_files = 'KTools/2_Category/**/*.{h,m}'
  end #Category
  
  s.subspec '0_Base' do |sb|
    sb.dependency 'KTools/1_Tools'
    sb.dependency 'KTools/2_Category'
    sb.source_files = 'KTools/0_Base/**/*.{h,m}'
    sb.resource_bundles = {
      'KTools' => 'KTools/0_Base/*.xcassets'
    }
  end #Base
end


#pod spec lint --sources='https://github.com/KimLinuxc/RunSpec.git,https://github.com/CocoaPods/Specs.git' --verbose --allow-warnings


