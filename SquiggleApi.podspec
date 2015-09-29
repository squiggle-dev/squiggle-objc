#
# Be sure to run `pod lib lint SquiggleApi.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "SquiggleApi"
    s.version          = "0.0.4"
    s.license       = { :type => 'BSD', :file => 'LICENSE.md' }
    s.homepage      = 'https://github.com/squiggle-dev/squiggle-objc'
    s.authors       = { 'Andy White' => 'andy@soundintheory.co.uk' }
    s.source        = { :git => 'https://github.com/squiggle-dev/squiggle-objc.git', :tag => 'v0.0.4' }

    s.summary          = "Squiggle API"
    


    s.ios.deployment_target = '6.0'
    s.osx.deployment_target = '10.8'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.source_files = 'SquiggleApi/**/*'
    s.public_header_files = 'SquiggleApi/**/*.h'

    s.dependency 'AFNetworking', '~> 2.5.4'
    s.dependency 'JSONModel', '~> 1.1.0'
    s.dependency 'ISO8601', '~> 0.3.0'
end

