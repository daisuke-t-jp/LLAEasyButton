Pod::Spec.new do |s|
s.name         = "LLAEasyButton"
s.version      = "1.0.5"
s.summary      = "LLAEasyButton is class for easy use of UIButton."
s.homepage     = "https://github.com/daisuke-t-jp/LLAEasyButton"
s.screenshots  = "https://raw.githubusercontent.com/daisuke-t-jp/LLAEasyButton/master/doc/header.png"
s.license      = "MIT"
s.author       = { "daisuke-t-jp" => "daisuke.t.jp@gmail.com" }

s.requires_arc = true
s.swift_version  = "4.2"
s.ios.deployment_target = "10.0"

s.source       = { :git => "https://github.com/daisuke-t-jp/LLAEasyButton.git", :tag => s.version" }
s.source_files  = 'LLAEasyButton/LLAEasyButton/*.{h,swift}'
end
