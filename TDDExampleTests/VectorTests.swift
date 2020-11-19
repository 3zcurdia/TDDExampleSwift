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

    func testAddition() {
        let expectedResult = Vector(x: 1, y: 1, z: 0)
        let actualResult  = normalYZ.add(normalXZ)
        XCTAssertEqual(expectedResult.x, actualResult.x)
        XCTAssertEqual(expectedResult.y, actualResult.y)
        XCTAssertEqual(expectedResult.z, actualResult.z)
        XCTAssertEqual(expectedResult, actualResult)
    }
    
    func testPointProduct() {
        let vectorA = Vector(x: 4, y: 5, z: 6)
        let vectorB = Vector(x: 1, y: 0, z: 1)
        XCTAssertEqual(4, vectorA.point(normalYZ))
        XCTAssertEqual(10, vectorA.point(vectorB))
        XCTAssertEqual(normalYZ.point(normalXZ), 0)
        XCTAssertEqual(normalYZ.point(normalXY), 0)
        XCTAssertEqual(normalXZ.point(normalXY), 0)
    }
    
    func testCrossProduct() {
        let vectorA = Vector(x: 8, y: 4, z: 2)
        let vectorB = Vector(x: 1, y: 1, z: 1)
        let expected = Vector(x: 2, y: -6, z: 4)
        XCTAssertEqual(expected, vectorA.cross(vectorB))
        XCTAssertEqual(normalYZ.cross(normalXZ), normalXY)
        XCTAssertEqual(normalXY.cross(normalYZ), normalXZ)
        XCTAssertEqual(normalXZ.cross(normalXY), normalYZ)
    }
    
    func testEquality() {
        let vectorA = Vector(x: 0, y: 0, z: 0)
        let vectorB = Vector(x: 0, y: 0, z: 0)
        XCTAssertEqual(vectorA, vectorB)
    }

}
