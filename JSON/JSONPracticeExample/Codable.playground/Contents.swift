//: Playground - noun: a place where people can play

import UIKit
import Foundation

let jsonString = """
{
   "message": "success",
   "number": 3,
   "people": [
     {
       "craft": "ISS",
       "name": "Anton Shkaplerov"
     },
     {
       "craft": "ISS",
       "name": "Scott Tingle"
     },
     {
       "craft": "ISS",
       "name": "Norishige Kanai"
     }
   ]
}
"""

let jsonData = jsonString.data(using: .utf8)!
struct JSON: Codable {
    let message: String
    let number: Int
    let people: [JSONDecoder]
}

