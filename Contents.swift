//: Playground - noun: a place where people can play

import UIKit

protocol Person {
    var name: String { get }
    var canWalk: Bool { get }
}

protocol Walkable {
    var walkSpeed: Double { get }
}
