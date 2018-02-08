//
//  ViewController.swift
//  VendingMachineKimYongHo
//
//  Created by KimYong Ho on 2018. 2. 7..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var colaBtn: UIButton!
    var cantataBtn: UIButton!
    var ciderBtn: UIButton!
    var samdasuBtn: UIButton!

    var oneThousandBtn: UIButton!
    var fiveHundredBtn: UIButton!
    var returnBtn: UIButton!

    var colaView: UIImageView!
    var cantataView: UIImageView!
    var ciderView: UIImageView!
    var samdasuView: UIImageView!

    var colaLb: UILabel!
    var cantataLb: UILabel!
    var ciderLb: UILabel!
    var samdasuLb: UILabel!

    var displayLabel: UILabel!
    var displayLabel1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //이미지뷰
        self.colaView = UIImageView()
        self.colaView.image = UIImage(named: "콜라.png")
        self.colaView.frame = CGRect(x: 30, y: 20, width: 150, height: 200)
        self.colaView.contentMode = UIViewContentMode.scaleAspectFit
        self.colaView.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        self.colaView.layer.borderWidth = 1
        self.view.addSubview(colaView)
        
        self.cantataView = UIImageView()
        self.cantataView.image = UIImage(named: "칸타타.png")
        self.cantataView.frame = CGRect(x: 30, y: 230, width: 150, height: 200)
        self.cantataView.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        self.cantataView.layer.borderWidth = 1
        self.cantataView.contentMode = UIViewContentMode.scaleAspectFit
        self.view.addSubview(cantataView)
        
        self.ciderView = UIImageView()
        self.ciderView.image = UIImage(named: "사이다.png")
        self.ciderView.frame = CGRect(x: 200, y: 20, width: 150, height: 200)
        self.ciderView.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        self.ciderView.layer.borderWidth = 1
        self.ciderView.contentMode = UIViewContentMode.scaleAspectFit
        self.view.addSubview(ciderView)
        
        self.samdasuView = UIImageView()
        self.samdasuView.image = UIImage(named: "삼다수.png")
        self.samdasuView.frame = CGRect(x: 200, y: 230, width: 150, height: 200)
        self.samdasuView.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        self.samdasuView.layer.borderWidth = 1
        self.samdasuView.contentMode = UIViewContentMode.scaleAspectFit
        self.view.addSubview(samdasuView)
        
        //이미지 레이블
        self.colaLb = UILabel()
        self.colaLb.frame = CGRect(x: 50, y: 180, width: 100, height: 20)
        self.colaLb.text = "1000원"
        self.colaLb.textColor = .gray
        self.view.addSubview(colaLb)
        
        self.cantataLb = UILabel()
        self.cantataLb.frame = CGRect(x: 50, y: 400, width: 100, height: 20)
        self.cantataLb.text = "1500원"
        self.cantataLb.textColor = .gray
        self.view.addSubview(cantataLb)
        
        self.ciderLb = UILabel()
        self.ciderLb.frame = CGRect(x: 240, y: 180, width: 100, height: 20)
        self.ciderLb.text = "800원"
        self.ciderLb.textColor = .gray
        self.view.addSubview(ciderLb)
        
        self.samdasuLb = UILabel()
        self.samdasuLb.frame = CGRect(x: 240, y: 400, width: 100, height: 20)
        self.samdasuLb.text = "500원"
        self.samdasuLb.textColor = .gray
        self.view.addSubview(samdasuLb)
        
        //Item 버튼
        self.colaBtn = UIButton()
        self.colaBtn.frame = CGRect(x: 30, y: 20, width: 150, height: 200)
        self.colaBtn.tag = 0
        self.colaBtn.addTarget(self, action: #selector(actionInputBtn(_:)), for: .touchUpInside)
        self.view.addSubview(colaBtn)
        
        self.cantataBtn = UIButton()
        self.cantataBtn.frame = CGRect(x: 30, y: 230, width: 150, height: 200)
        self.cantataBtn.tag = 1
        self.cantataBtn.addTarget(self, action: #selector(actionInputBtn(_:)), for: .touchUpInside)
        self.view.addSubview(cantataBtn)
        
        self.ciderBtn = UIButton()
        self.ciderBtn.frame = CGRect(x: 200, y: 20, width: 150, height: 200)
        self.ciderBtn.tag = 2
        self.ciderBtn.addTarget(self, action: #selector(actionInputBtn(_:)), for: .touchUpInside)
        self.view.addSubview(ciderBtn)
        
        self.samdasuBtn = UIButton()
        self.samdasuBtn.frame = CGRect(x: 200, y: 230, width: 150, height: 200)
        self.samdasuBtn.tag = 3
        self.samdasuBtn.addTarget(self, action: #selector(actionInputBtn(_:)), for: .touchUpInside)
        self.view.addSubview(samdasuBtn)
        
        //DisplaLabel
        self.displayLabel = UILabel()
        displayLabel.frame = CGRect(x: 30, y: 450, width: 320, height: 50)
        displayLabel.backgroundColor = .black
        displayLabel.textColor = .white
        self.view.addSubview(displayLabel)
        
        self.displayLabel1 = UILabel()
        displayLabel1.frame = CGRect(x: 30, y: 510, width: 320, height: 50)
        displayLabel1.backgroundColor = .black
        displayLabel1.textColor = .white
        self.view.addSubview(displayLabel1)
        
        
        //InputBtn
        self.oneThousandBtn = UIButton()
        self.oneThousandBtn.frame = CGRect(x: 30, y: 600, width: 80, height: 40)
        self.oneThousandBtn.setTitle("1000원", for: .normal)
        self.oneThousandBtn.setTitleColor(.gray, for: .normal)
        self.oneThousandBtn.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        self.oneThousandBtn.layer.borderWidth = 1
        self.oneThousandBtn.tag = 4
        self.oneThousandBtn.addTarget(self, action: #selector(actionInputBtn(_:)), for: .touchUpInside)
        self.view.addSubview(oneThousandBtn)
        
        self.fiveHundredBtn = UIButton()
        self.fiveHundredBtn.frame = CGRect(x: 160, y: 600, width: 80, height: 40)
        self.fiveHundredBtn.setTitle("500원", for: .normal)
        self.fiveHundredBtn.setTitleColor(.gray, for: .normal)
        self.fiveHundredBtn.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        self.fiveHundredBtn.layer.borderWidth = 1
        self.fiveHundredBtn.tag = 5
        self.fiveHundredBtn.addTarget(self, action: #selector(actionInputBtn(_:)), for: .touchUpInside)
        self.view.addSubview(fiveHundredBtn)
        
        self.returnBtn = UIButton()
        self.returnBtn.frame = CGRect(x: 270, y: 600, width: 80, height: 40)
        self.returnBtn.setTitle("반환", for: .normal)
        self.returnBtn.setTitleColor(.gray, for: .normal)
        self.returnBtn.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        self.returnBtn.layer.borderWidth = 6
        self.returnBtn.tag = 6
        self.returnBtn.addTarget(self, action: #selector(actionInputBtn(_:)), for: .touchUpInside)
        self.view.addSubview(returnBtn)
        
    }

//    @objc func calculationAction (_ sender: UIButton) {
//
//        var displayStr1 = ""
//        if  sender.tag == 0 {
//            changeValue -= 1000
//            displayStr1 += "잔액은 \(changeValue)입니다."
//        } else if sender.tag == 1 {
//            changeValue -= 1500
//            displayStr1 += "잔액은 \(changeValue)입니다."
//        } else if sender.tag == 2 {
//            changeValue -= 800
//            displayStr1 += "잔액은 \(changeValue)입니다."
//        } else if sender.tag == 3 {
//            changeValue -= 500
//            displayStr1 += "잔액은 \(changeValue)입니다."
//        }
//
//    }
//
    

    
    @objc func actionInputBtn (_ sender: UIButton) {
        var changeValue:Int = 0
        var amountMoney: Int = 0
        var displayStr = ""
        var displayStr1 = ""
        
        if sender.tag == 4 {
            displayStr += "1000원이 입급 되었습니다."
            amountMoney += 1000
        } else if sender.tag == 5 {
            displayStr += "500원이 입금 되었습니다."
            amountMoney += 500
        } else if sender.tag == 0 {
            displayStr += "콜라가 나왔습니다."
            changeValue -= 1000
            displayStr1 += "잔액은 \(changeValue)입니다."
        } else if sender.tag == 1 {
            displayStr += "칸타타가 나왔습니다."
            changeValue -= 1500
            displayStr1 += "잔액은 \(changeValue)입니다."
        } else if sender.tag == 2 {
            displayStr += "사이다가 나왔습니다."
            changeValue -= 800
            displayStr1 += "잔액은 \(changeValue)입니다."
        } else if sender.tag == 3 {
            displayStr += "삼다수가 나왔습니다."
            changeValue -= 500
            displayStr1 += "잔액은 \(changeValue)입니다."
        } else if sender.tag == 6 {
        displayStr1 += "잔액 \(changeValue)를 반환합니다."
        }
        displayLabel.text = displayStr
        displayLabel1.text = displayStr1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

