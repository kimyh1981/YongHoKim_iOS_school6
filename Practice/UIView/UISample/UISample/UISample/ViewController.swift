//
//  ViewController.swift
//  UISample
//
//  Created by KimYong Ho on 2018. 2. 1..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    var Btn: UIButton?
    var midTextLb: UILabel!
    var resultBtn: UIButton?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var resultBtn: UIButton!
        
        let fedImg: UIImage? = UIImage(named: "FEND011-4112-72301.jpg")
        let bgImgView: UIImageView = UIImageView(frame: view.bounds)
        bgImgView.image = fedImg
        bgImgView.contentMode = UIViewContentMode.scaleAspectFit
        
        view.addSubview(bgImgView)
        
        //        let myImg: UIImage? = UIImage(named: "myImg.jpeg")
        //        let bgImgView: UIImageView = UIImageView(frame: view.bounds)
        //        bgImgView.image = myImg
        //        bgImgView.contentMode = UIViewContentMode.scaleAspectFit
        //
        //        view.addSubview(bgImgView)
        
        let coverView: UIView = UIView(frame: view.bounds)
        coverView.backgroundColor = .white
        coverView.alpha = 0.1
        bgImgView.addSubview(coverView)
        
        
        
        //레이블
        let titleLb: UILabel = UILabel(frame: CGRect(x: 0, y: 70, width: view.frame.size.width, height: 150))
        titleLb.text = "Fender Stratocaster"
        titleLb.textColor = UIColor.black
        titleLb.textAlignment = NSTextAlignment.center
        titleLb.font = UIFont.systemFont(ofSize: 40)
        view.addSubview(titleLb)
        
        midTextLb = UILabel(frame: CGRect(x: 0, y: view.frame.size.height/2, width: view.frame.size.width, height: 220))
        midTextLb.text = "This is a ultimate guitar for me."
        midTextLb.textColor = .white
        midTextLb.font = UIFont.systemFont(ofSize: 25)
        midTextLb.numberOfLines = 0
        midTextLb.backgroundColor = .white
        midTextLb.textAlignment = NSTextAlignment.center
        //        midTextLb.backgroundColor = .blue
        view.addSubview(midTextLb)
        
        let bottomTextLb: UILabel = UILabel(frame: CGRect(x: 0, y: view.frame.size.height/2+75, width: view.frame.size.width, height: 250))
        //여러줄의 텍스트를 표현할 때 """ ~ """를 사용하며, 엔터를 쳐서 줄바꿈 가능함.
        bottomTextLb.text = """
        This model is Elite Stratocaster. Absolutely,
        amazing guitar. I bougt it in Mexico in 2017.
        """
        bottomTextLb.textColor = .gray
        bottomTextLb.font = UIFont.systemFont(ofSize: 20)
        bottomTextLb.numberOfLines = 0
        bottomTextLb.lineBreakMode = .byWordWrapping
        bottomTextLb.textAlignment = NSTextAlignment.left
        //        bottomTextLb.backgroundColor = .red
        view.addSubview(bottomTextLb)
        
        let logoBtn: UIButton = UIButton(type: .custom)
        logoBtn.frame = CGRect(x: 0, y: 25, width: 150, height: 45)
        logoBtn.setTitle("Love", for: .normal)
        logoBtn.setTitleColor(.red, for: .normal)
        logoBtn.setTitleColor(.blue, for: .selected)
        logoBtn.setTitleColor(.black, for: .highlighted)
        logoBtn.backgroundColor = .white
        logoBtn.tag = 1
        logoBtn.addTarget(self, action: #selector(self.logoEventTouchupInside(_:)), for: .touchUpInside)
        view.addSubview(logoBtn)
        
        let logoBtn1: UIButton = UIButton(type: .custom)
        logoBtn1.frame = CGRect(x: 0, y: 55, width: 150, height: 45)
        logoBtn1.setTitle("Hate", for: .normal)
        logoBtn1.setTitleColor(.red, for: .normal)
        logoBtn1.setTitleColor(.blue, for: .selected)
        logoBtn1.setTitleColor(.black, for: .highlighted)
        logoBtn1.backgroundColor = .white
        logoBtn1.tag = 2
        logoBtn1.addTarget(self, action: #selector(self.logoEventTouchupInside(_:)), for: .touchUpInside)
        view.addSubview(logoBtn1)
        
        let logoBtn2: UIButton = UIButton(type: .custom)
        logoBtn2.frame = CGRect(x: 0, y: 85, width: 150, height: 45)
        logoBtn2.setTitle("Affair", for: .normal)
        logoBtn2.setTitleColor(.red, for: .normal)
        logoBtn2.setTitleColor(.blue, for: .selected)
        logoBtn2.setTitleColor(.black, for: .highlighted)
        logoBtn2.backgroundColor = .white
        logoBtn2.tag = 3
        logoBtn2.addTarget(self, action: #selector(self.logoEventTouchupInside(_:)), for: .touchUpInside)
        view.addSubview(logoBtn2)
        
        resultBtn = UIButton(type: .custom)
        resultBtn.setTitle("Happy", for: .normal)
        resultBtn.frame = CGRect(x: 0, y: 115, width: 150, height: 45)
        resultBtn.addTarget(self, action: #selector(result(_:)), for: .touchUpInside)
        view.addSubview(resultBtn)
//        let myView:ProfileView = ProfileView(frame: CGRect(x: 0, y: 0, width: 300, height: 40   ))
//        myView.setTitle("Hello")\
//        myView.setImage(named: "FEND011-4112-72301.jpg")
//        self.view.addSubview(myView)
        
        
    }
    @objc func logoEventTouchupInside(_ sender: UIButton) {
        if sender.isSelected == false {
            sender.isSelected = true
            resultBtn?.isSelected = false
            resultBtn = sender
        }
        print("You touched me.")
    }
    @objc func result(_ sender: UIButton) {
        guard let sBtn = resultBtn else { return }
        midTextLb.text = String(sBtn.tag)
    }
}




