//
//  ViewController.swift
//  basic grammar practice
//
//  Created by KimYong Ho on 2018. 1. 11..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumDisplay: UILabel!
    @IBOutlet weak var secondNumDisplay: UILabel!
    @IBOutlet weak var resultDisplay: UILabel!
    //operationTemp는 출력되는 숫자를 저장하는 문자
    var operationTemp: String = ""
    
    var firstNum: String = "0"
    var secondNum: String = "0"
    var resultNum: String = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - Action Method
    
    @IBAction func clickedNumber(_ sender: UIButton) {
        
        //버튼에 있는 텍스트 가져오기
        let numberStr = sender.titleLabel!.text!
        //연산자 유무확인
        if operationTemp.count > 0 {
//            let secondNumDisplay = secondNumDisplay.text
            if secondNum == "0" {
//                secondNumDisplay.text = numberStr
                secondNum = secondNum + numberStr
            }else
            {
//               secondNumDisplay.text = secondNumDisplay.text! + numberStr
                secondNum = secondNum + numberStr
            }
        }else
        {
        
//        let firstDisplay = firstNumDisplay.text
        if firstNum == "0"
        {
//            firstNumDisplay.text = numberStr
            //최초 계산기
            resetDisplay()
            firstNum = numberStr
        }else
        {
//            firstNumDisplay.text = firstNumDisplay.text! + numberStr
            firstNum = firstNum + numberStr
        }
            firstNumDisplay.text = firstNum
        }
    }
    
    @IBAction func clickedoperation(_ sender: UIButton) {
        let operStr = sender.titleLabel!.text!
//        let firstDisplay = firstNumDisplay.text!
        if firstNum != "0"
        {
            operationTemp = operStr
            changeColor(by: operStr)
        }
    }
    
    @IBAction func cancelClicked(_ sender: UIButton) {
        print("cancelClicked")
        resetData()
        resetDisplay()
    
    }
    //데이터 리셋
    func resetData()
    {
        firstNum = "0"
        secondNum = "0"
        resultNum = "0"
    }
    //UI리셋
    func resetDisplay()
    {
        firstNumDisplay.text = "0"
        secondNumDisplay.text = "0"
        resultDisplay.text = "0"
    }
    
    private func changeColor(by operation:String)
    {
        var color:UIColor
    
        switch operation {
        case "+":
            color = .red
        case "−":
            color = .yellow
        case "×":
            color = .green
        case "÷":
            color = .blue
        default:
            color = .white
            print("여기 걸리면 에러임!")
        }
        
        changeLabelBG(color: color)
        
    }
    
    private func changeLabelBG(color:UIColor)
    {
        firstNumDisplay.backgroundColor = color
        secondNumDisplay.backgroundColor = color
        resultDisplay.backgroundColor = color
    }
    @IBAction func resultClicked(_ sender: UIButton) {

//        let secondNum = secondNumDisplay.text!
        if secondNum != "0"
        {
            let firstNumTemp: Int = Int(firstNum)!
            let secondNumTemp: Int = Int(secondNum)!
            let op: String = operationTemp
            
            let resultNum = calculation(firstNum: firstNumTemp, operation: op, secondNum: secondNumTemp)
            resultDisplay.text = String(resultNum)
            resetData()
        }
    }
    
    //MARK: - Private Method
    //연산 함수
    //두수를 연산자에 따라 연산하고 결과값을 리턴해준다.
    //  - Parameters:
    //  - firstNum: 첫번째 디스플리에 표시된 숫자
    //  - operation: 연산을 위한 연산자
    //  - secondNum: 두번째 디스플레이에 표시된 숫자
    //- Returns: 연산의 결과값
    
    
    private func calculation(firstNum: Int, operation: String, secondNum: Int) -> Int
    {
        var resultNum: Int = 0
        
        switch operation {
        case "+":
            print("더하기 연산")
            resultNum = firstNum + secondNum
        case "−":
            print("빼기 연산")
            resultNum = firstNum - secondNum
        case "×":
            print("곱하기 연산")
            resultNum = firstNum * secondNum
        case "÷":
            print("나누기 연산")
            resultNum = firstNum / secondNum
        default:
            print("여기 걸리면 에러임!")
        }
    
        
        //에러 막기위한 임시 방편
        return resultNum
        
    }
    
    
    
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // 시작지점!
//        /// This grammar is for testing.
//
//        let yongho:Car = Car()
//        yongho.name = "HyundaiG70"
//        yongho.miles = 50000
//        yongho.amortizationPermiles = 100
//        yongho.newCarPrice = 50000000
//        yongho.sell()
//
//    }
//
//
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }



