//
//  TDDExampleTests.swift
//  TDDExampleTests
//
//  Created by Luis Ezcurdia on 10/4/17.
//  Copyright © 2017 Luis Ezcurdia. All rights reserved.
//

import XCTest
@testable import TDDExample

class VectorTests: XCTestCase {
    let normalYZ = Vector(x: 1, y: 0, z: 0)
    let normalXZ = Vector(x: 0, y: 1, z: 0)
    let normalXY = Vector(x: 0, y: 0, z: 1)

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAdd() {
        let expected = Vector(x: 1, y: 1, z: 0)
        let result  = normalYZ.add(normalXZ)
        XCTAssertEqual(expected.x, result.x)
        XCTAssertEqual(expected.y, result.y)
        XCTAssertEqual(expected.z, result.z)
        XCTAssertEqual(expected, result)
    }
    
    func testPoint() {
        let vectA = Vector(x: 4, y: 5, z: 6)
        let vectB = Vector(x: 1, y: 0, z: 1)
        XCTAssertEqual(4, vectA.point(normalYZ))
        XCTAssertEqual(10, vectA.point(vectB))
    }
    
    func testCross() {
        let vectA = Vector(x: 8, y: 4, z: 2)
        let vectB = Vector(x: 1, y: 1, z: 1)
        let expected = Vector(x: 2, y: -6, z: 4)
        XCTAssertEqual(expected, vectA.cross(vectB))

    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
