Pod::Spec.new do |s|
  s.name         = "ios-block-utils"
  s.version      = "1.0"
  s.summary      = "Simplifying block dispatching mechanism."
  s.homepage     = "https://github.com/attila-tamasi/ios-block-utils"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Attila Tamasi" => "attila.tamasi@me.com" }
  s.source       = { 
    :git => "https://github.com/attila-tamasi/ios-block-utils.git", 
    :tag => "1.0"
  }

  s.platform     = :ios, '7.0'
  s.source_files = '*.{h,m}'
  s.requires_arc = true
end