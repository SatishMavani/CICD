//
//  CICDSampleTests.swift
//  CICDSampleTests
//
//  Created by Satish Mavani on 13/12/19.
//  Copyright © 2019 LTI. All rights reserved.
//

import XCTest
@testable import CICDSample

class CICDSampleTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testValidBGColor()  {
        
        let vc = ViewController()
        let bgcolor = vc.view.backgroundColor
        
        #if Red
            XCTAssertEqual(bgcolor, UIColor.red)
        #elseif Blue
           XCTAssertEqual(bgcolor, UIColor.blue)
        #elseif Green
            XCTAssertEqual(bgcolor, UIColor.green)
        #else
            XCTAssertEqual(bgcolor, UIColor.green)
        #endif

    }

}
