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
    s.version          = "0.0.1"

    s.summary          = "Squiggle API"
    s.description      = <<-DESC
                         
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.source_files = 'SquiggleApi/**/*'
    s.public_header_files = 'SquiggleApi/**/*.h'

    s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'JSONModel', '~> 1.1'
    s.dependency 'ISO8601', '~> 0.3'
end

