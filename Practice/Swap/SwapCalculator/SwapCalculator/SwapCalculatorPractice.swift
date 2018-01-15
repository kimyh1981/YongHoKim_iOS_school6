//
//  SwapCalculatorPractice.swift
//  SwapCalculator
//
//  Created by KimYong Ho on 2018. 1. 15..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import Foundation

class SwapCalculatorPractice {
    ///실습 : Tool Box
    //1-1. inch to cm
    func inchesToCentimeters(inches:Double) ->Double{
        let centimeters = inches * 2.54
        return centimeters
    }
    
    //1-2. cm to inch
    func centimetersToInches(centimeters:Double) ->Double{
        let inches = centimeters / 2.54
        return inches
    }
    
    //2-1. m2 to 평
    func m2To평(m2:Double) -> Double{
        let 평 = m2 / 3.305785
        return 평
        
    }

    //2-2. 평 to m2
    func 평ToM2(평:Double) -> Double{
        let m2 = 평 * 3.305785
        return m2
    }
        
    //3-1. 화씨 to 섭씨
    func degreeFahrenheitTodegreeCelsius(degreeFahrenheit:Double) -> Double{
        let degreeCelsius = (degreeFahrenheit - 32) / 1.8
        return degreeCelsius
    }
        
    //3-2. 섭씨 to 화씨
    func degreeCelsiusTodegreeFahrenheit(degreecelsius:Double) -> Double{
        let degreeFahrenheit = 32 + (1.8 * degreecelsius)
        return degreeFahrenheit
    }
    
    //4-1. KB to MB
    func kbToMb(kb:Double) -> Double{
        let mb = kb/1000
        return mb
    }
    
    //4-1. MB to GB
    func mbToGb(mb:Double) -> Double{
        let gb = mb/1000
        return gb
    }
    
    //5-1. 시간(hhmmss)을 받으면 초단위로 변경, 초단위를 시간으로 변경
           // 11320 >> 4400

}


