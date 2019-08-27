//
//  RPSTests.swift
//  RPSTests
//
//  Created by me on 24/08/2019.
//  Copyright © 2019 Vlad Nemyrovsky. All rights reserved.
//

import XCTest
@testable import RPS

class RPSTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testrockResult() {
        let sign = Sign.rock
        print(sign)
        print(sign.emoji)
        XCTAssert(sign.getResult(for: .rock) == .draw)
        XCTAssert(sign.getResult(for: .paper) == .lose)
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
