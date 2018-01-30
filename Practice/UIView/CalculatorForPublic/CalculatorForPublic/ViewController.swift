//
//  ViewController.swift
//  CalculatorForPublic
//
//  Created by KimYong Ho on 2018. 1. 30..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //UIView --> UILabel로 변경
    var displayView: UIView!
    var keyPadView: UIView!
    var etcView: UIView!
    var opeView: UIView!
    var numberPadView: UIView!
    
//    var etcButtonList: [UIView]!
//    var opebuttonList: [UIView]!
//    var numberButtonList: [UIView]!
    var etcButtonList: [UIButton]!
    var opebuttonList: [UIButton]!
    var numberButtonList: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        


        createUI()
        updateLayout()

//        let button: UIButton = UIButton()
//        button.addTarget(self, action: #selector(self.buttonAction(_ :)), for: .touchUpInside)
//        button.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
//        button.setTitle("This is a button.", for: .normal)
//        button.setTitleColor(.blue, for: .normal)
//        button.backgroundColor = .black
//        view.addSubview(button)
//
//    }
//
//
//    @objc func buttonAction(_ sender: UIButton) {
//        print("You pressed the button.")
    }
    
    //UI인스턴스 만드는 메소드
    private func createUI() {
        //mainview에 추가되는 가장 큰 영역
        displayView = UIView()
        view.addSubview(displayView)
        keyPadView = UIView()
        view.addSubview(keyPadView)
        
        //keyPad에 추가되는 영역
        etcView = UIView()
        keyPadView.addSubview(etcView)
        numberPadView = UIView()
        keyPadView.addSubview(numberPadView)
        opeView = UIView()
        keyPadView.addSubview(opeView)
        
        //test를 위한 색상 지정
        displayView.backgroundColor = UIColor.white
        keyPadView.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        etcView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        opeView.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        numberPadView.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        //keyPad에 들어갈 버튼 리스트
        let etcTitleList = ["C", "+/-", "%"]
        etcButtonList = makeButton(count: 3)
        for index in 0..<etcButtonList.count {
//            button.backgroundColor = UIColor.cyan
            let title = etcTitleList[index]
            let button = etcButtonList[index]
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.darkGray.cgColor
            button.setTitle(title, for: UIControlState.normal)
            button.addTarget(self, action: #selector(self.etcHandler(_ :)), for: .touchUpInside)
            etcView.addSubview(button)
            }
        
        
        opebuttonList = makeButton(count: 5)
        for button in opebuttonList{
//            button.backgroundColor = UIColor.blue
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.blue.cgColor
            
            opeView.addSubview(button)
        }
        numberButtonList = makeButton(count: 10)
        for button in numberButtonList{
//            button.backgroundColor = UIColor.red
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.red.cgColor
            
            numberPadView.addSubview(button)
        }
    }
    
    @objc func etcHandler(_ sender: UIButton) {
        print(sender.tag)
        print(sender.titleLabel?.text)
    }
    
//    @objc func opeHandler(_ sender: UIButton) {
//        sender.tag
//    }
//
//
//    @objc func numberHandler(_ sender: UIButton) {
//        sender.tag
//    }
//
    
    //UI인스턴스 프레임 설정 메소드
    private func updateLayout() {
        //버튼은 화면의 가로에 4개씩 배치
        let buttonWidth:CGFloat = self.view.frame.size.width / 4
        //아래에서부터 배치
        var offSetY:CGFloat = (buttonWidth * 5)
        
        //keyPad영역 프레임
        keyPadView.frame = CGRect(x: 0, y: self.view.frame.size.height - offSetY, width: view.frame.size.width, height: buttonWidth)
        
        //Display영역 프레임
        let displayViewHeight:CGFloat = 150
        offSetY -= displayViewHeight
        displayView.frame = CGRect(x: 0, y: offSetY, width: view.frame.size.width, height: displayViewHeight)
        offSetY += displayView.frame.size.height
        
        //<KeyPad안 영역
        //etcView영역 프레임
        etcView.frame = CGRect(x: 0, y: 0, width: buttonWidth * 3, height: buttonWidth)
        arrange(viewList: etcButtonList, columCount: 3, width: buttonWidth)
        //연산자영역 프레임
        opeView.frame = CGRect(x: buttonWidth * 3, y: 0, width: buttonWidth, height: buttonWidth * 5)
        arrange(viewList: opebuttonList, columCount: 1, width: buttonWidth)
        //숫자영역 프레임
        numberPadView.frame = CGRect(x: 0, y: buttonWidth, width: buttonWidth * 3, height: buttonWidth * 4)
        arrange(viewList: numberButtonList, columCount: 2, width: buttonWidth)
        
    }

    
    func makeButton(count: Int) -> [UIButton] {
        var returnList: [UIButton] = []
        for index in 0..<count {
            let button = UIButton()
            returnList.append(button)
        }
        return returnList
    }
    
    func arrange(viewList:[UIView], columCount:Int, width:CGFloat) {
        for index in 0..<viewList.count {
            let col: CGFloat = CGFloat(index % columCount)
            let row: CGFloat = CGFloat(index % columCount)
            
            viewList[index].frame = CGRect(x: col*width, y: row*width, width: width, height: width)
        }
    }
    
   

}

