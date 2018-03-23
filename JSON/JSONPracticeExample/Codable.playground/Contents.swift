import Foundation
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true


let jsonData = """
{
"bool": true,
"int": 0,
"double": 2.9,
"string": "Hellow, World!",
"array": [1,2,3,4],
"dict": { "key": "value" }
}
""".data(using: .utf8)!

struct CodableExample: Decodable {
    let bool: Bool
    let int: Int
    let double: Double
    let string: String
    let array: [Int]
    let dict: Dictionary
    
    enum CodingKeys: String, CodingKey {
        case bool
        case int
        case double
        case string
        case array
        case dict
    }
    struct Dictionary: Decodable {
        let key: String
        
        enum Coddingkeys: String, CodingKey {
            case key
        }
    }
}
do {
    let codableExample = try JSONDecoder().decode(CodableExample.self, from: jsonData)
    print(codableExample.bool)
    print(codableExample.int)
    print(codableExample.double)
    print(codableExample.string)
    print(codableExample.array)
    print(codableExample.dict)
} catch {
    print(error.localizedDescription)
}







//let decoder = JSONDecoder()
//let decoded = try decoder.decode(CodableExample.self, from: jsonData)
//print(type(of: decoded))
//
//let encoder = JSONEncoder()
//let encodedData = try encoder.encode(decoded)
//let encodedString = String(data: encodedData, encoding: .utf8)!
//print(type(of: encodedString))

