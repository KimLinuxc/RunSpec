#
# Be sure to run `pod lib lint KBaseModules.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KBaseModules'
  s.version          = '0.0.3'
  s.summary          = 'A short description of KBaseModules.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/KimLinuxc/KBaseModules'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'KimLinuxc' => '1038239369@qq.com' }
  s.source           = { :git => 'https://github.com/KimLinuxc/KBaseModules.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  s.frameworks = 'UIKit'
  s.dependency 'KTools'
  
  s.subspec '1_Tools' do |st|
    st.source_files = 'KBaseModules/1_Tools/**/*.{h,m}'
  end #1_Tools
  
  s.subspec '2_View' do |sv|
    sv.dependency 'KBaseModules/1_Tools'
    sv.source_files = 'KBaseModules/2_View/**/*.{h,m}'
  end #2_View
  
  s.subspec '3_BaseController' do |sbc|
    sbc.dependency 'KBaseModules/1_Tools'
    sbc.source_files = 'KBaseModules/3_BaseController/**/*.{h,m}'
  end #3_BaseController
  
  s.subspec '4_Controller' do |sc|
    sc.dependency 'KBaseModules/3_BaseController'
    sc.source_files = 'KBaseModules/4_Controller/**/*.{h,m}'
  end #4_Controller
  
  s.subspec '0_Base' do |sb|
    sb.dependency 'KBaseModules/1_Tools'
    sb.dependency 'KBaseModules/2_View'
    sb.dependency 'KBaseModules/3_BaseController'
    sb.dependency 'KBaseModules/4_Controller'
    sb.source_files = 'KBaseModules/0_Base/**/*.{h,m}'
    sb.resource_bundles = {
      'KBaseModules' => 'KBaseModules/0_Base/*.xcassets'
    }
  end #Base
end

#pod spec lint --sources='https://github.com/KimLinuxc/RunSpec.git,https://github.com/CocoaPods/Specs.git' --verbose --allow-warnings
