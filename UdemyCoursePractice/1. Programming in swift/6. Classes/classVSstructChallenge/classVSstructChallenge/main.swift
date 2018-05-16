//
//  main.swift
//  classVSstructChallenge
//
//  Created by KimYong Ho on 14/05/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation

class List {
    let name: String
    var movieTitle: [String] = []
    
    init(name: String) {
        self.name = name
    }
    
    func print() {
        Swift.print("Movie List: \(name)")
        for movie in movieTitle {
            Swift.print(movie)
        }
        Swift.print("\n")
    }
}

class User {
    var lists: [String: List] = [:]
    func addList(_ list: List) {
        lists[list.name] = list
    }

    func list(forName name: String) -> List? {
        return lists[name]
    }
}


let kim = User()
let lee = User()
var actionList = List(name: "Melodrama")
var actionList1 = List(name: "Action")

kim.addList(actionList)
lee.addList(actionList)

kim.lists["Melodrama"]?.movieTitle.append("Romeo and Juliet")
kim.lists["Melodrama"]?.movieTitle.append("If only")

lee.lists["Melodrama"]?.movieTitle.append("My love")
kim.lists["Melodrama"]?.print()
lee.lists["Melodrama"]?.print()

kim.addList(actionList1)
lee.addList(actionList1)

kim.lists["Action"]?.movieTitle.append("Captain America")
lee.lists["Action"]?.movieTitle.append("Guadians of Galaxy")

kim.lists["Action"]?.print()
lee.lists["Action"]?.print()

struct ListStruct {
    let name: String
    var movieTitle: [String] = []
    
    func print() {
        Swift.print("Movie List: \(name)")
        for movie in movieTitle {
            Swift.print(movie)
        }
        Swift.print("\n")
    }
}

struct UserStruct {
    var lists: [String: ListStruct] = [:]
    mutating func addList(_ list: ListStruct) {
        lists[list.name] = list
    }
    
    func list(forName name: String) -> ListStruct? {
        return lists[name]
    }
}
var kim2 = UserStruct()
var lee2 = UserStruct()
var actionList2 = ListStruct(name: "Action", movieTitle: ["Avengers"])
//var actionList3 = ListStruct(name: "History") // 파라미터 하나 빠지면 에러?

kim2.addList(actionList2)
kim2.lists["Action"]?.movieTitle.append("RoboCop")
kim2.lists["Action"]?.print()
