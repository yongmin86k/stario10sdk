require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "StarIO10"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']
  s.homepage     = package['homepage']
  s.platform     = :ios, "13.0"
  s.source       = { :git => "https://github.com/yongmin86k/stario10sdk.git" }
  s.authors      = "Yongmin Kim"

  s.vendored_frameworks = 'ios/Frameworks/StarIO10.xcframework'
end
