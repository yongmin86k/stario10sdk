Pod::Spec.new do |s|
  s.name         = "StarIO10"
  s.version      = "1.0.0"
  s.summary      = "StarIO10 Framework"
  s.platform     = :ios, "13.0"
  s.homepage     = "https://github.com/yongmin86k/stario10sdk"
  s.source       = { :git => "https://github.com/yongmin86k/stario10sdk.git" }
  s.authors      = "Yongmin Kim"

  s.vendored_frameworks = 'Frameworks/StarIO10.xcframework'
end
