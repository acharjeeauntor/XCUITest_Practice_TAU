//
//  HomeScreenObject.swift
//  TAUUITests
//
//  Created by Auntor Acharja on 10/12/22.
//

import XCTest


class HomeScreen:TestBaseClass{
    
    enum HomeScreen:String{
        case welcomeMsgLabel = "welcomeMessage"
        case cityInputFieldId = "city"
        case enrollBtnId = "enrollButton"
        case errorMsgLabel = "Please Enter City"
        case successMsgLabel = "Thanks for Joining!"
    }
    
    func getWelcomeMsgElement() -> XCUIElement{
        return app.staticTexts[HomeScreen.welcomeMsgLabel.rawValue]
    }
    func getSuccessMsg()->String{
        return app.staticTexts[HomeScreen.successMsgLabel.rawValue].label
    }
    func getErrorMsg()->String{
        return app.staticTexts[HomeScreen.errorMsgLabel.rawValue].label
    }
    func tapEnrollButton(){
        app.buttons[HomeScreen.enrollBtnId.rawValue].tap()
    }
    func enterCityName(cityName:String){
        let inputField = app.textFields[HomeScreen.cityInputFieldId.rawValue]
        inputField.tap()
        inputField.typeText(cityName)
    }
    
}

