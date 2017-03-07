//
//  RomanNumeralCalculatorUITests.swift
//  RomanNumeralCalculatorUITests
//
//  Created by Aniket Ghode on 3/7/17.
//  Copyright © 2017 buddybuild. All rights reserved.
//

import XCTest

class RomanNumeralCalculatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        XCUIDevice.shared().orientation = .portrait
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddOnePlusOne() {
        
        let app = XCUIApplication()
        let iButton = app.buttons["I"]
        let calculatedLabel = app.staticTexts["calculated_value"]
        iButton.tap()
        XCTAssertEqual(calculatedLabel.label, "I")
        app.buttons["+"].tap()
        iButton.tap()
        XCTAssertEqual(calculatedLabel.label, "II")
        
        
    }
    
}
