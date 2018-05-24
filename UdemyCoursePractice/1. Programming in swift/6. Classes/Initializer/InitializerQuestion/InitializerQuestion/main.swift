//
//  main.swift
//  InitializerQuestion
//
//  Created by KimYong Ho on 24/05/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation
//Initializer 숙제해보기

class Cat {
    var name: String
    required init(name: String) {
        self.name = name
    }
    func speak() {
    }
}

class Ragdoll: Cat {
    var numTrickLearned: Int = 0
    
    
}
