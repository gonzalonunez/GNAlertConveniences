#
# Be sure to run `pod lib lint GNAlertConveniences.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "GNAlertConveniences"
  s.version          = "0.1.0"
  s.summary          = "A UIViewController extension designed to simplify your life when presenting a UIAlertController."

  s.homepage         = "https://github.com/gonzalonunez/GNAlertConveniences"
  s.license          = 'MIT'
  s.author           = { "Gonzalo Nunez" => "gonzi@tcpmiami.com" }
  s.source           = { :git => "https://github.com/gonzalonunez/GNAlertConveniences.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/gonz_ponz'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'GNAlertConveniences' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit'
end
