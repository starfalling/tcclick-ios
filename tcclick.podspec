Pod::Spec.new do |s|
  s.name         = "tcclick"
  s.version      = "0.1"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.summary      = "tcclick sdk for ios"
  s.homepage     = "https://github.com/starfalling/tcclick-ios"
  s.authors      = { "York.Gu" => "gyq5319920@gmail.com" }
  s.source       = { :git => "https://github.com/starfalling/tcclick-ios.git", :tag => "v#{s.version}" }
  s.platform     = :ios, '4.0'
  s.requires_arc = false
  s.source_files = 'tcclick/TCClick.{h,m}'
end
