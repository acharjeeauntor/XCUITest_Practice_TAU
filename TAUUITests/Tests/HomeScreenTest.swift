//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by Auntor Acharja on 10/12/22.
//

import XCTest

class HomeScreenTest: TestBaseClass {
    
    var homeScreen = HomeScreen()
   
    func testWelcomeMessage(){
        XCTAssertTrue(homeScreen.getWelcomeMsgElement().waitForExistence(timeout: 2))
    }
    
    func testEmptyFieldErrorMsg(){
        homeScreen.tapEnrollButton()
        XCTAssertEqual(homeScreen.getErrorMsg(),"Please Enter City")
    }
    
    func testjoingingMsg(){
        homeScreen.enterCityName(cityName: "Dhaka")
        homeScreen.tapEnrollButton()
        XCTAssertEqual(homeScreen.getSuccessMsg(),"Thanks for Joining!")
  
    }
    func testPerformance(){
        self.measure {
            homeScreen.enterCityName(cityName: "Dhaka")
            homeScreen.tapEnrollButton()
        }
    }
}
