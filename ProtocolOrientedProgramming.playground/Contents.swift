//: Playground - noun: a place where people can play

import UIKit


protocol Person {
    var name: String { get }
    var canWalk: Bool { get }
}

protocol Walkable {
    var walkSpeed: Double { get }
}

protocol Vehicle: CustomStringConvertible {
    
    var isRunning: Bool{get set}
    mutating func start()
    mutating func stop()
    
}

struct Bus: Vehicle{
    
    var isRunning: Bool = false
    var description: String {
        return "Bus-Desc"
    }
    mutating func start() {
        if isRunning{
            print("Started")
        }
        else{
            isRunning = true
            print("Starting Now")
        }
    }
    mutating func stop() {
        if isRunning{
            isRunning = false
            print("Stopped")
        }
        else{
            print("Already Stopped")
        }
    }
    
    
}

class Truck: Vehicle {
    
    var isRunning: Bool = false
    var description: String {
        return "Truck-Desc"
    }
    func start() {
        if isRunning{
            print("Already Started")
        }
        else{
            isRunning = true
            print("Starting Now")
        }
    }
    func stop(){
        if isRunning{
            isRunning = false
            print("Stopped")
        }
        else{
            print("Already Stopped")
        }
    }
    
    func lights(){
        print("Lights_ON")
    }
    
}

var bus = Bus()
var truck = Truck()

bus.start()
truck.start()
truck.lights()


var vehicle : Array<Vehicle> = [bus,truck]
for veh in vehicle {
    print("\(veh.description)")
}





