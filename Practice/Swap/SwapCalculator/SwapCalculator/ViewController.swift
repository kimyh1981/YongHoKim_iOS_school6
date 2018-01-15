//
//  ViewController.swift
//  SwapCalculator
//
//  Created by KimYong Ho on 2018. 1. 15..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //객체 선언
    //1. inch to cm & cm to inch
    var inchtocenti = SwapCalculatorPractice()
    var centitoinch = SwapCalculatorPractice()
    //2. m2 to 평, 평 to m2
    var m2To평 = SwapCalculatorPractice()
    var 평ToM2 = SwapCalculatorPractice()
    //3. 화씨 to 섭씨, 섭씨 to 화씨
    var degreeFahrenheitTodegreeCelsius = SwapCalculatorPractice()
    var degreeCelsiusTodegreeFahrenheit = SwapCalculatorPractice()
    //4. KB to MB, MB to GM
    var kbToMb = SwapCalculatorPractice()
    var mbToGb = SwapCalculatorPractice()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //1.
        let result = inchtocenti.inchesToCentimeters(inches: 4)
        print(result)
        let result1 = centitoinch.centimetersToInches(centimeters: 10)
        print(result1)
        //2.
        let result2 = m2To평.m2To평(m2: 79)
        print(result2)
        let result3 = 평ToM2.평ToM2(평: 24)
        print(result3)
        //3.
        let result4 = degreeFahrenheitTodegreeCelsius.degreeFahrenheitTodegreeCelsius(degreeFahrenheit: 70)
        print(result4)
        let result5 = degreeCelsiusTodegreeFahrenheit.degreeCelsiusTodegreeFahrenheit(degreecelsius: 32)
        print(result5)
        //4.
        let result6 = kbToMb.kbToMb(kb: 10000)
        print(result6)
        let result7 = mbToGb.mbToGb(mb: 50000)
        print(result7)
    }


}





