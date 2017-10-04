//
//  Vector.swift
//  TDDExample
//
//  Created by Luis Ezcurdia on 10/4/17.
//  Copyright © 2017 Luis Ezcurdia. All rights reserved.
//

import Foundation

struct Vector {
    let x : Int
    let y : Int
    let z : Int
    
    func add(_ vector: Vector) -> Vector {
        return Vector(x: self.x + vector.x, y: self.y + vector.y, z: self.z + vector.z)
    }
}
