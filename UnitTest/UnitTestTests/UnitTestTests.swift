//
//  UnitTestTests.swift
//  UnitTestTests
//
//  Created by 岡澤輝明 on 2021/05/03.
//

import XCTest
@testable import UnitTest

class UnitTestTests: XCTestCase {
    
    var viewController: ViewController!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    override func setUp() {
        super.setUp()
        self.viewController = ViewController()
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
        XCTAssertEqual(viewController.plus(a: 3, b: 4), 7)
    }
    
    func testMulti() {
        XCTAssertEqual(viewController.multi(a: 3, b: 4), 2)
    }
}
