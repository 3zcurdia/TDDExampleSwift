//
//  Vector.swift
//  TDDExample
//
//  Created by Luis Ezcurdia on 10/4/17.
//  Copyright © 2017 Luis Ezcurdia. All rights reserved.
//

import Foundation

struct Vector {
    let x: Int
    let y: Int
    let z: Int

    func add(_ vector: Vector) -> Vector {
        return Vector(x: self.x + vector.x, y: self.y + vector.y, z: self.z + vector.z)
    }

    func point(_ vector: Vector) -> Int {
        return (self.x * vector.x) + (self.y * vector.y) + (self.z * vector.z)
    }

    func cross(_ vector: Vector) -> Vector {
        let i = (self.y * vector.z) - (self.z * vector.y)
        let j = -1 * ( (self.x * vector.z) - (self.z * vector.x) )
        let k = (self.x * vector.y) - (self.y * vector.x)
        return Vector(x: i, y: j, z: k)
    }

    func moduleSquare() -> Int {
        return self.x * self.x + self.y * self.y + self.z * self.z
    }

    func module() -> Double {
        return Double(moduleSquare()).squareRoot()
    }

    func normalize() -> Vector {
        let mod = self.module()
        return Vector(x: Int(Double(self.x)/mod),
                      y: Int(Double(self.y)/mod),
                      z: Int(Double(self.z)/mod))
    }
}

extension Vector: Equatable {}

func ==(left: Vector, right: Vector) -> Bool {
    return left.x == right.x && left.y == right.y && left.z == right.z
}
