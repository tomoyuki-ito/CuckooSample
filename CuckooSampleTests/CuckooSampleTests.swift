//
//  CuckooSampleTests.swift
//  CuckooSampleTests
//
//  Created by Tomoyuki Ito on 2018/03/29.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import XCTest
@testable import CuckooSample
import Cuckoo

class CuckooSampleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let mock = MockUserRepository()
        
        stub(mock) { stub in
            when(stub.getName(id: anyInt())).thenReturn("stub name")
            when(stub.getAge(id: anyInt())).thenReturn(18)
        }
        XCTAssertEqual(mock.getName(id: 1), "stub name")
        XCTAssertEqual(mock.getAge(id: 1), 18)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
