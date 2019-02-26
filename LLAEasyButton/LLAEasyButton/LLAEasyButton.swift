//
//  LLAEasyButton.swift
//  LLAEasyButton
//
//  Created by Daisuke T on 2019/01/25.
//  Copyright © 2019 LLAEasyButton. All rights reserved.
//



import Foundation



public class LLAEasyButton: UIButton {
	// MARK: - Enum, Const
	public enum Status {
		case normal
		case selected
		
		static public func bool2Status(_ flag: Bool) -> Status {
			return flag ? .selected : .normal
		}
	}
	
	public static let defaultColorMapEnable: [Status: UIColor] = [.normal: UIColor.blue, .selected: UIColor.lightGray]
	public static let defaultColorDisable = UIColor.lightGray
	
	
	
	// MARK: - Property
	public var appendObject: Any?
	public var colorMapEnable: [Status: UIColor] = defaultColorMapEnable {
		didSet {
			if isEnabled {
				self.colorMap = colorMapEnable
			}
		}
	}
	
	public var colorMapDisable = defaultColorDisable {
		didSet {
			if !isEnabled {
				self.colorMap = [.normal: colorMapDisable, .selected: colorMapDisable]
			}
		}
	}
	
	private var colorMap: [Status: UIColor] = defaultColorMapEnable {
		didSet {
			self.backgroundColor = colorMap[Status.bool2Status(isSelected)]
		}
	}
	
	
	
	// MARL: - Init
	override public func awakeFromNib() {
		self.backgroundColor = colorMap[.normal]
		
		guard let label = subviewLabel() else {
			return
		}

		label.textColor = UIColor.white
	}
	
	
	
	// MARK: - Override UIView
	override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		super.touchesBegan(touches, with: event)
		
		self.backgroundColor = colorMap[.selected]
	}
	
	override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
		super.touchesMoved(touches, with: event)
		
		self.backgroundColor = colorMap[.selected]
	}
	
	override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
		super.touchesEnded(touches, with: event)
		
		guard !isSelected else {
			return
		}
		
		self.backgroundColor = colorMap[.normal]
	}
	
	override public func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
		super.touchesCancelled(touches, with: event)
		
		guard !isSelected else {
			return
		}
		
		self.backgroundColor = colorMap[.normal]
	}
	
	override public var isSelected: Bool {
		didSet {
			self.backgroundColor = colorMap[Status.bool2Status(isSelected)]
		}
	}
	
	override public var isEnabled: Bool {
		didSet {
			if isEnabled {
				self.colorMap = colorMapEnable
			} else {
				self.colorMap = [.normal: colorMapDisable, .selected: colorMapDisable]
			}
		}
	}
	
	
	
	// MARK: Label
	public func subviewLabel() -> UILabel? {
		var res: UILabel?
		
		for subview in subviews {

			guard subview is UILabel else {
				continue
			}
			
			res = subview as? UILabel
			break
		}
		
		return res
	}
	
}
