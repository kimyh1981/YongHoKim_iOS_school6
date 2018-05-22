//
//  main.swift
//  InheritancePractice
//
//  Created by KimYong Ho on 20/05/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation
//Inheritance Practice

/***
 [클래스 연습]
 오토바이 -> 엔진, 휠, 스타일(오프로드, 온로드)
 메이커 -> BMW, Hollidavison 비교
 기종 -> F700GS
 형제 기종 -> F800GS
 ***/

class AutoBike {
    var engine: String
    var numberOfWheel: Int
    var style: String
    
    init(engine: String, numberOfWheel: Int, style: String) {
        self.engine = engine
        self.numberOfWheel = numberOfWheel
        self.style = style
    }
    func minimumSpeedRequired(_ speed: Int) {
        if speed > 50 {
            print("Your machine is absolutely an Autobike!")
        } else {
            print("This is not an autobike, it's a bicycle!")
        }
    }
}

class BMW: AutoBike {
    var model: [String]
    var maxSpeed: Int
    
    init(_ model: [String], _ maxSpeed: Int, _ engine: String, _ numberOfWheel: Int, _ style: String) {
        self.model = model
        self.maxSpeed = maxSpeed
        super.init(engine: engine, numberOfWheel: numberOfWheel, style: style)
    }
    override func minimumSpeedRequired(_ speed: Int) {
        if speed > 30 {
            print("Good enough to ride!")
        } else {
            print("This is so slow as motorcycle")
        }
    }
}

class HarleyDavison: AutoBike {
    var origin: [String]
    init(_ origin: [String], _ engine: String, _ numberOfWheel: Int, _ style: String ) {
        self.origin = origin
        super.init(engine: engine, numberOfWheel: numberOfWheel, style: style)
    }
    func enginSound(_ sound: Int, _ engine: String) {
        if sound > 100 {
            print("Quite enough for fighting!")
        } else {
            print("\(engine) is not enough for fighting!")
        }
    }
}

var autoBike: AutoBike = AutoBike(engine: "Any Type of powered by gasoline", numberOfWheel: 2, style: "Any type of motorcycle")
var fSeries: BMW = BMW(["F700GS", "F800GS"], 200, "4StrockDirect2cylinder", 2, "Adventure")

var streetSeries: HarleyDavison = HarleyDavison(["USA", "Mexico"], "2Cylinder", 2, "OnRoad")

print(fSeries.minimumSpeedRequired(200))
print(fSeries.style)
print(streetSeries.minimumSpeedRequired(90))
print(streetSeries.enginSound(80, streetSeries.engine))
print(streetSeries.origin)
print(autoBike.minimumSpeedRequired(20))


let autoBike2 = autoBike as? BMW
if let autoBike2 = autoBike2 {
    print(autoBike2.minimumSpeedRequired(50))
} else {
    print("Is this a motorCycle?")
}

