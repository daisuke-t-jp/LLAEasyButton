Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.name         = "LLAEasyButton"
  spec.version      = "1.0.5"
  spec.summary      = "LLAEasyButton is class for easy use of UIButton."

  spec.description  = <<-DESC
                   "LLAEasyButton" is class for easy use of UIButton.
                   The class can set normal/selected color.
                   Also easy use button's label.
                   DESC

  spec.homepage     = "https://github.com/daisuke-t-jp/LLAEasyButton"
  spec.screenshots  = "https://raw.githubusercontent.com/daisuke-t-jp/LLAEasyButton/master/doc/header.png"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.author       = { "daisuke-t-jp" => "daisuke.t.jp@gmail.com" }


  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.ios.deployment_target = "10.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source       = { :git => "https://github.com/daisuke-t-jp/LLAEasyButton.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source_files  = "LLAEasyButton/LLAEasyButton/*.{h,swift}"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.swift_version = "4.2"
  spec.requires_arc = true

end
