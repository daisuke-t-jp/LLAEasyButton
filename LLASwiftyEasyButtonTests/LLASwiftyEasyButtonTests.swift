//
//  LLASwiftyEasyButtonTests.swift
//  LLASwiftyEasyButtonTests
//
//  Created by Daisuke T on 2019/01/25.
//  Copyright © 2019 LLASwiftyEasyButton. All rights reserved.
//

import XCTest
@testable import LLASwiftyEasyButton

class LLASwiftyEasyButtonTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLabel() {
		_ = { () -> () in
			let button = LLASwiftyEasyButton()
			XCTAssertNil(button.subviewLabel())

			button.addSubview(UILabel())
			XCTAssertNotNil(button.subviewLabel())
		}()
	}

	func testColor() {
		_ = { () -> () in
			let button = LLASwiftyEasyButton()
			button.colorMapEnable = [.normal: UIColor.yellow, .selected: UIColor.magenta]
			button.colorMapDisable = UIColor.black

			button.isEnabled = true
			button.isSelected = true
			XCTAssertEqual(button.backgroundColor, UIColor.magenta)

			button.isEnabled = true
			button.isSelected = false
			XCTAssertEqual(button.backgroundColor, UIColor.yellow)

			button.isEnabled = false
			button.isSelected = true
			XCTAssertEqual(button.backgroundColor, UIColor.black)

			button.isEnabled = false
			button.isSelected = false
			XCTAssertEqual(button.backgroundColor, UIColor.black)
		}()
	}

	
	/*
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
	*/

}
