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
            XCTAssertEqual(bgcolor, UIColor.gray)
        #endif

    }

}
