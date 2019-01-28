<img src="https://github.com/daisuke-t-jp/LLAEasyButton/blob/master/doc/header.png" width="700"></br>
------
![Platform](https://img.shields.io/badge/Platform-iOS%2010.0+-blue.svg)
[![Language Swift%204.2](https://img.shields.io/badge/Language-Swift%204.2-orange.svg)](https://developer.apple.com/swift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-green.svg)](https://github.com/Carthage/Carthage)
[![Cocoapods](https://img.shields.io/cocoapods/v/LLAEasyButton.svg)](https://cocoapods.org/pods/LLAEasyButton)
[![Build Status](https://travis-ci.org/daisuke-t-jp/LLAEasyButton.svg?branch=master)](https://travis-ci.org/daisuke-t-jp/LLAEasyButton)

<img src="https://github.com/daisuke-t-jp/LLAEasyButton/blob/master/doc/demo.gif" width="250"></br>


# Concept

*LLAEasyButton* is class for easy use of UIButton.  
The class can set normal/selected color.
Also easy use button's label.


# Install
### Carthage
`github "daisuke-t-jp/LLAEasyButton"`

### CocoaPods
```
platform :ios, '10.0'
use_frameworks!

target 'target' do
pod 'LLAEasyButton'
end
```


# Works at Interface Builder
### 1. Set view
<img src="https://github.com/daisuke-t-jp/LLAEasyButton/blob/master/doc/IB-setup0.png" width="600"></br>
<img src="https://github.com/daisuke-t-jp/LLAEasyButton/blob/master/doc/IB-setup1.png" width="600"></br>
Open Interface Builder.  
Select UIView and put to view.  
(**Not UIButton**)

### 2. Change class
<img src="https://github.com/daisuke-t-jp/LLAEasyButton/blob/master/doc/IB-setup2.png" width="600"></br>
Rename UIView’s class name to *LLAEasyButton*.  

### 3. Add Label (If you need)
<img src="https://github.com/daisuke-t-jp/LLAEasyButton/blob/master/doc/IB-setup3.png" width="600"></br>
<img src="https://github.com/daisuke-t-jp/LLAEasyButton/blob/master/doc/IB-setup4.png" width="600"></br>
If you need to label.  
Put UILabel to LLAEasyButton’s subview hierarchy.

### 4. Set IBOutlet
<img src="https://github.com/daisuke-t-jp/LLAEasyButton/blob/master/doc/IB-setup5.png" width="600"></br>
You set LLAEasyButton IBOutlet on swift code.  

### 5. Connect IBOutlet
<img src="https://github.com/daisuke-t-jp/LLAEasyButton/blob/master/doc/IB-setup6.png" width="600"></br>
<img src="https://github.com/daisuke-t-jp/LLAEasyButton/blob/master/doc/IB-setup7.png" width="600"></br>
<img src="https://github.com/daisuke-t-jp/LLAEasyButton/blob/master/doc/IB-setup8.png" width="600"></br>
Interface Builder object connet to IBOutlet.



# Usage
### 1. Set normal/selected color on enable state
``` swift
button?.colorMapEnable = [.normal: UIColor.init(red: 239/255, green: 154/255, blue: 154/255, alpha: 1.0),
                        .selected: UIColor.init(red: 244/255, green: 67/255, blue: 54/255, alpha: 1.0)]
```

### 2. Set normal/selected color on disable state
``` swift
button?.colorMapDisable = [.normal: UIColor.init(red: 239/255, green: 154/255, blue: 154/255, alpha: 1.0),
                        .selected: UIColor.init(red: 244/255, green: 67/255, blue: 54/255, alpha: 1.0)]
```

### 3. Set button's label text
``` swift
button?.subviewLabel()?.text = "button"
button?.subviewLabel()?.textColor = UIColor.blue
```
