Pod::Spec.new do |s|
  s.name             = 'MGRelativeKit'
  s.version          = '0.1.4'
  s.summary          = 'Convert absolute to relative layout without autolayout.'
  s.homepage         = 'https://github.com/magi82/MGRelativeKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'magi82' => 'bkhwang82@gmail.com' }
  s.source           = { :git => 'https://github.com/magi82/MGRelativeKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'Sources/*.swift'
end
