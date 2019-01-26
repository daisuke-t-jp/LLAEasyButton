<img src="https://github.com/daisuke-t-jp/LLASwiftyEasyButton/blob/master/doc/header.png" width="700"></br>
------
![Platform](https://img.shields.io/badge/Platform-iOS%2010.0+-blue.svg)
[![Language Swift%204.2](https://img.shields.io/badge/Language-Swift%204.2-orange.svg)](https://developer.apple.com/swift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-green.svg)](https://github.com/Carthage/Carthage)
[![Cocoapods](https://img.shields.io/cocoapods/v/LLASwiftyEasyButton.svg)](https://cocoapods.org/pods/LLASwiftyEasyButton)
[![Build Status](https://travis-ci.org/daisuke-t-jp/LLASwiftyEasyButton.svg?branch=master)](https://travis-ci.org/daisuke-t-jp/LLASwiftyEasyButton)

<img src="https://github.com/daisuke-t-jp/LLASwiftyEasyButton/blob/master/doc/demo.gif" width="250"></br>


### Install
#### Carthage
`github "daisuke-t-jp/LLASwiftyEasyButton"`

#### CocoaPods
```
platform :ios, '10.0'
use_frameworks!

target 'target' do
pod 'LLASwiftyEasyButton'
end
```


### Concept

*LLASwiftyEasyButton* is class for easy use of UIButton.  
The class can set normal/selected color.
Also easy use button's label.


### Hot to use
#### Set normal/selected color on enable state
``` swift
button?.colorMapEnable = [.normal: UIColor.init(red: 239/255, green: 154/255, blue: 154/255, alpha: 1.0),
                        .selected: UIColor.init(red: 244/255, green: 67/255, blue: 54/255, alpha: 1.0)]
```

#### Set normal/selected color on disable state
``` swift
button?.colorMapDisable = [.normal: UIColor.init(red: 239/255, green: 154/255, blue: 154/255, alpha: 1.0),
                        .selected: UIColor.init(red: 244/255, green: 67/255, blue: 54/255, alpha: 1.0)]
```

#### Set button's label set text
``` swift
button?.subviewLabel()?.text = "button"
button?.subviewLabel()?.textColor = UIColor.blue
```