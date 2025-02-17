require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = "RNAppleAuthentication"
  s.version             = package["version"]
  s.description         = package["description"]
  s.summary             = <<-DESC
                            Apple Authentication services for React Native.
                          DESC
  s.homepage            = "http://invertase.io/oss/react-native-firebase"
  s.license             = package['license']
  s.authors             = "Invertase Limited"
  s.source              = { :git => "https://github.com/Lucid-Finance/react-native-apple-authentication.git", :branch => "main" }
  s.social_media_url    = 'http://twitter.com/invertaseio'
  s.platforms           = { :ios => "9.0", :osx => "10.15", :visionos => "1.0" }
  s.source_files        = 'ios/**/*.{h,m}'
  s.dependency          'React-Core'
  s.static_framework    = true
end
