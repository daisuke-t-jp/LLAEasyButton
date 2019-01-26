//
//  ViewController.swift
//  Demo
//
//  Created by Daisuke T on 2019/01/25.
//  Copyright © 2019 LLASwiftyPlainButton. All rights reserved.
//

import UIKit

import LLASwiftyEasyButton



class ViewController: UIViewController {

	@IBOutlet weak var sw: UISwitch?
	@IBOutlet weak var button1: LLASwiftyEasyButton?
	@IBOutlet weak var button2: LLASwiftyEasyButton?
	@IBOutlet weak var button3: LLASwiftyEasyButton?

	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		button1?.colorMapEnable = [.normal: UIColor.init(red: 239/255, green: 154/255, blue: 154/255, alpha: 1.0),
								   .selected: UIColor.init(red: 244/255, green: 67/255, blue: 54/255, alpha: 1.0)]
		button1?.colorMapDisable = UIColor.init(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0)

		button2?.colorMapEnable = [.normal: UIColor.init(red: 128/255, green: 203/255, blue: 196/255, alpha: 1.0),
								   .selected: UIColor.init(red: 0/255, green: 150/255, blue: 136/255, alpha: 1.0)]
		button2?.colorMapDisable = UIColor.init(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0)
		button2?.subviewLabel()?.text = "button"
		button2?.layer.cornerRadius = button3!.frame.width * 0.5
		button2?.clipsToBounds = true

		button3?.colorMapEnable = [.normal: UIColor.init(red: 129/255, green: 212/255, blue: 250/255, alpha: 1.0),
								   .selected: UIColor.init(red: 3/255, green: 169/255, blue: 244/255, alpha: 1.0)]
		button3?.colorMapDisable = UIColor.init(red: 100/255, green: 100/255, blue: 100/255, alpha: 1.0)
		button3?.subviewLabel()?.text = "click"
		button3?.appendObject = ["💰🍒７", "７７🍉", "🍒🍒🍉", "🍒🔔💰", "🔔💰🍒", "🔔🍒🔔", "７７７"]

		
		sw!.addTarget(self, action: #selector(switchAction(_ :)), for: .valueChanged)
	}

	
	@objc private func switchAction(_ sender: UISwitch)
	{
		button1!.isEnabled = sender.isOn
		button2!.isEnabled = sender.isOn
		button3!.isEnabled = sender.isOn
	}

	
	@objc private func buttonAction(_ sender: LLASwiftyEasyButton)
	{
		guard let array: [String] = sender.appendObject as? [String] else
		{
			return
		}
		
		let elm = array.randomElement()
		sender.subviewLabel()?.text = elm
	}
}

