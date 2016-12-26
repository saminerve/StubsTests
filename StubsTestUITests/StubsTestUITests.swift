//
//  StubsTestUITests.swift
//  StubsTestUITests
//
//  Created by Sami Maaref on 26/12/2016.
//  Copyright © 2016 Sami Maaref. All rights reserved.
//

import XCTest
import Mockingjay
import Alamofire

class StubsTestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
      
      MockingjayProtocol.addStub(matcher: uri("/login"), builder: http(403))

        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
      
      let url = URL(string: "https://my-renault-api-server.cfapps.io/api/v1/users/67/login")
      let params = ["email": "test" , "password": "to"]
      
      Alamofire
        .request(url!, method: .post, parameters: params, encoding: JSONEncoding.default)
        .responseString { response in
          
          print("2/=== \(response.result)")
      }

      
      
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
      self.expectation(forNotification: "", object: nil, handler: nil)
      self.waitForExpectations(timeout: 200, handler: nil)

      
    }
    
}
