//
//  ViewController.swift
//  Demo
//
//  Created by Daisuke T on 2019/01/25.
//  Copyright © 2019 LLAEasyButton. All rights reserved.
//

import UIKit

import LLAEasyButton



class ViewController: UIViewController {

	@IBOutlet weak var sw: UISwitch?
	@IBOutlet weak var button1: LLAEasyButton?
	@IBOutlet weak var button2: LLAEasyButton?
	@IBOutlet weak var button3: LLAEasyButton?

	
	
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
		button3?.subviewLabel()?.text = "Let's 🎰"
		button3?.appendObject = ["💰🍒🍇", "🍇🍇🍉", "🍒🍒🍉", "🍒🔔💰", "🔔💰🍒", "🔔🍒🔔", "🍇🍇🍇"]
		button3?.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)

		
		sw!.addTarget(self, action: #selector(switchAction(_ :)), for: .valueChanged)
	}

	
	@objc private func switchAction(_ sender: UISwitch) {
		let alertTitle = [false:"to disable", true:"to enable"][sender.isOn]
		let alert = UIAlertController(title: alertTitle,
									  message: "",
									  preferredStyle: UIAlertController.Style.alert)

		let alertAction = UIAlertAction(title: "OK",
										style: UIAlertAction.Style.default,
										handler:nil)
		alert.addAction(alertAction)
		present(alert, animated: true, completion: nil)

		
		button1!.isEnabled = sender.isOn
		button2!.isEnabled = sender.isOn
		button3!.isEnabled = sender.isOn
	}

	
	@objc private func buttonAction(_ sender: LLAEasyButton) {
		guard let array: [String] = sender.appendObject as? [String] else {
			return
		}
		
		let elm = array.randomElement()
		sender.subviewLabel()?.text = elm
	}
}

