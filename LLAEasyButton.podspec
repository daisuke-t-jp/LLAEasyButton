
Pod::Spec.new do |s|
s.name         = "LLAEasyButton"
s.version      = "1.0.3"
s.summary      = "LLAEasyButton is class for easy use of UIButton."
s.homepage     = "https://github.com/daisuke-t-jp/LLAEasyButton"
s.screenshots  = "https://raw.githubusercontent.com/daisuke-t-jp/LLAEasyButton/master/doc/header.png"
s.license      = "MIT"
s.author       = { "daisuke-t-jp" => "daisuke.t.jp@gmail.com" }
s.ios.deployment_target = "10.0"
s.platform       = :ios, "10.0"
s.swift_version  = "4.2"
s.source       = { :git => "https://github.com/daisuke-t-jp/LLAEasyButton.git", :tag => "1.0.3" }
s.source_files  = 'LLAEasyButton/LLAEasyButton/*.{h,swift}'
end
