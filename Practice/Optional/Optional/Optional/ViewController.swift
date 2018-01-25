//
//  ViewController.swift
//  Optional
//
//  Created by KimYong Ho on 2018. 1. 25..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

//class ViewController: UIViewController {
//
//    var name:String = ""
//    var oName:String?
//    var o2Name:String!
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        name = "Kim"
//        oName = "Kim"
//        o2Name = name + oName!
//
//        print(name, oName!, o2Name)
//
//        // Do any additional setup after loading the view, typically from a nib.
//    }

func isNumber(inputNum1:String, inputNum2:String) -> Bool {
    if let firstNumber = Int(inputNum1), let secondNum = Int(inputNum2) {
        return true
    }else {
        return false
    }
}
isNumber(inputNum1: "123", inputNum2: "321")
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

