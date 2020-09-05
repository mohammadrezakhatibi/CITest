//
//  CITestTests.swift
//  CITestTests
//
//  Created by MohammadReza on 9/5/20.
//  Copyright © 2020 MohammadReza. All rights reserved.
//

import XCTest
@testable import CITest

class CITestTests: XCTestCase {
    
    let converter = Converter()
    
    func testBear() {
        let result = converter.converter(name: "bear")
        XCTAssertEqual(result, "🐻","Symbol for bear is incorrect")
    }
    
    func testDoggo() {
        let result = converter.converter(name: "doggo")
        XCTAssertEqual(result, "🐶","Symbol for doggo is incorrect")
    }
    
    func testLion() {
         let result = converter.converter(name: "lion")
         XCTAssertEqual(result, "🦁","Symbol for lion is incorrect")
     }
    
    func testFox() {
         let result = converter.converter(name: "fox")
         XCTAssertEqual(result, "🦊","Symbol for fox is incorrect")
     }
    
}
