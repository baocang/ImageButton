Pod::Spec.new do |s|
  s.name         = 'ImageButton'
  s.version      = '0.0.1'
  s.summary      = 'A button with image and text written in swift'
  s.homepage     = 'https://github.com/baocang/ImageButton'
  s.license      = 'MIT'
  s.author       = { 'Baocang Nie' => 'baocang.nie@icloud.com' }
  s.source       = { :git => 'https://github.com/baocang/ImageButton.git', :tag => '0.0.1' }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'ImageButton/*.swift'
  s.framework  = 'UIKit'
end
