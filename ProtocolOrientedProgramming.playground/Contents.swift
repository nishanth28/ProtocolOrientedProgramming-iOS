//: Playground - noun: a place where people can play

import UIKit



protocol Vehicle: CustomStringConvertible {
    
    var isRunning: Bool{get set}
    var model : String { get set }
    var makeYear : String {get set}
    mutating func start()
    mutating func stop()
    
}

extension Vehicle{
    
    var makeModel : String {
        
        return "\(makeYear) \(model)"
        
    }
    
    mutating func start(){
        
        if isRunning{
            print("\(self.description) Already Started")
        }
        else{
            isRunning = true
            print("\(self.description) Starting Now")
        }
        
        
    }
    
    mutating func stop(){
        
        if isRunning{
            isRunning = false
            print("\(self.description) Stopped")
        }
        else{
            print("\(self.description) Already Stopped")
        }

        
        
    }
    
    
    
}


struct Bus: Vehicle{
    
    var isRunning: Bool = false
    var model : String
    var makeYear: String
    var description: String {
        return self.makeModel
    }
    
}

class Truck: Vehicle {
    
    var isRunning: Bool = false
    var makeYear: String
    var model: String
    
    init(isRunning:Bool,make:String,model:String) {
        self.isRunning = isRunning
        self.makeYear = make
        self.model = model
    }
    
    var description: String {
        return self.makeModel
    }
    
    func lights(){
        print("Lights_ON")
    }
    
}

var bus = Bus(isRunning: false, model: "Omni", makeYear: "1994")
var truck = Truck(isRunning: false, make: "1997", model: "Jeep")

bus.start()
truck.start()
truck.lights()


var vehicle : Array<Vehicle> = [bus,truck]
for veh in vehicle {
    print("\(veh.makeModel)")
}





