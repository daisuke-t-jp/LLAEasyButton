
Pod::Spec.new do |s|
s.name         = "LLASwiftyEasyButton"
s.version      = "1.0.1"
s.summary      = "Easy button in swift."
s.homepage     = "https://github.com/daisuke-t-jp/LLASwiftyEasyButton"
s.screenshots  = "https://raw.githubusercontent.com/daisuke-t-jp/LLASwiftyEasyButton/master/doc/header.png"
s.license      = "MIT"
s.author       = { "daisuke-t-jp" => "daisuke.t.jp@gmail.com" }
s.ios.deployment_target = "10.0"
s.platform       = :ios, "10.0"
s.swift_version  = "4.2"
s.source       = { :git => "https://github.com/daisuke-t-jp/LLASwiftyEasyButton.git", :tag => "1.0.1" }
s.source_files  = "LLASwiftyEasyButton"
s.source_files  = 'LLASwiftyEasyButton/*.{h,swift}'
end
