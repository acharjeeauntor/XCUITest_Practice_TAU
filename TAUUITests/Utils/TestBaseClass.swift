//
//  TAUUITestsLaunchTests.swift
//  TAUUITests
//
//  Created by Auntor Acharja on 10/12/22.
//

import XCTest

class TestBaseClass: XCTestCase {

    var app = XCUIApplication()

    override func setUpWithError() throws {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
        super.tearDown()
        app.terminate()
    }
}
