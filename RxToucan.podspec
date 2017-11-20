Pod::Spec.new do |s|
  s.name             = 'RxToucan'
  s.version          = '0.1.0'
  s.summary          = 'Toucan wrapper with RxSwift.'
  s.description      = <<-DESC
Toucan wrapper with RxSwift.
                       DESC

  s.homepage         = 'https://github.com/noppefoxwolf/RxToucan'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '🦊Tomoya Hirano' => 'noppelabs@gmail.com' }
  s.source           = { :git => 'https://github.com/noppefoxwolf/RxToucan.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/noppefoxwolf'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RxToucan/Classes/**/*'
  s.dependency 'Toucan'
  s.dependency 'RxSwift'
end
