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
    s.version          = "0.0.23"

    s.summary          = "Squiggle API"
    s.description      = <<-DESC
                         Objective C client for the Squiggle API
                         DESC

    s.ios.deployment_target = '7.0'
    s.osx.deployment_target = '10.9'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://github.com/squiggle-dev/squiggle-objc"
    s.license      = { :type => 'BSD', :file => 'LICENSE.md' }
    s.source       = { :git => "https://github.com/squiggle-dev/squiggle-objc.git", :tag => "v0.0.23" }
    s.author       = { "Andy White" => "andy@soundintheory.co.uk" }

    s.source_files = 'SquiggleApi/**/*.{m,h}'
    s.public_header_files = 'SquiggleApi/**/*.h'


    s.dependency 'AFNetworking', '~> 3.1'
    s.dependency 'JSONModel', '~> 1.4'
    s.dependency 'ISO8601', '~> 0.5'
end

