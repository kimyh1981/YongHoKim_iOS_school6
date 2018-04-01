//
//  ViewController.swift
//  ClosureEtc
//
//  Created by KimYong Ho on 01/04/2018.
//  Copyright © 2018 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        func addingNum(a: Int, b: Int) -> Int {
            let result = multiplyClosure(a: 3, b: 3)
            return result
        }
        let result = addingNum(a: 3, b: 3)
        print(result)
        
        func countingNum() -> () -> Int {
            var counter = 0
            let incrementingCounter: () -> Int = {
                counter += 1
                return counter
            }
            return incrementingCounter
            print(incrementingCounter)
        }
        
        let counter1 = countingNum()
        print(counter1)
        
        var prices: [Double] = [1.50, 10.00, 4.99, 2.30, 8.19]
        let largePrice = prices.filter { (price) -> Bool in
            return price > 5
            print(price)
        }
    }

}


