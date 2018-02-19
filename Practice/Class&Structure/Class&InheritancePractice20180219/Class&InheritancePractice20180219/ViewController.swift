//
//  ViewController.swift
//  Class&InheritancePractice20180219
//
//  Created by KimYong Ho on 2018. 2. 20..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kim: Person = Person()
        kim.name = "Kim"
        kim.age = 99
        kim.study()
        print(kim.introduction)
        
        let lee: Student = Student()
        lee.major = "iOS"
        lee.age = 88
        lee.study()
        print(lee.introductionOfMajor())
        print(lee.introduction)
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

