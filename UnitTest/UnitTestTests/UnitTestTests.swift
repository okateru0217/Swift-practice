//
//  UnitTestTests.swift
//  UnitTestTests
//
//  Created by 岡澤輝明 on 2021/05/03.
//

import XCTest
@testable import UnitTest

class UnitTestTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }


    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testPlus() {
        let viewController = ViewController()
        let result = viewController.plus(a: 3, b: 4)
        XCTAssertEqual(result, 7)
    }
    
    func testMulti() {
        let viewController = ViewController()
        let result = viewController.multi(a: 3, b: 4)
        XCTAssertEqual(result, 2)
    }
}
