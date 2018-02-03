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
        
        let loveImg: UIImage? = UIImage(named: "love.jpg")
        let bgImgView: UIImageView = UIImageView(frame: view.bounds)
        bgImgView.image = loveImg
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
        let titleLb: UILabel = UILabel(frame: CGRect(x: 0, y: 12.5, width: view.frame.size.width, height: 50))
        titleLb.text = "Life is yours."
        titleLb.textColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        titleLb.textAlignment = NSTextAlignment.center
        titleLb.font = UIFont.systemFont(ofSize: 25)
        view.addSubview(titleLb)
        
        midTextLb = UILabel(frame: CGRect(x: 12.5, y: 420, width: 350, height: 40))
        midTextLb.text = "Love yourself first."
        midTextLb.textColor = .black
        midTextLb.font = UIFont.systemFont(ofSize: 25)
        midTextLb.numberOfLines = 0
        midTextLb.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        midTextLb.alpha = 0.5
        midTextLb.textAlignment = NSTextAlignment.center
        view.addSubview(midTextLb)
        
        let bottomTextLb: UILabel = UILabel(frame: CGRect(x: 6, y: view.frame.size.height/2+140, width: 363, height: 170))
        //여러줄의 텍스트를 표현할 때 """ ~ """를 사용하며, 엔터를 쳐서 줄바꿈 가능함.
        bottomTextLb.text = """
        
        
            1. Dance, as if no one is watching you.
            2. Love, as if never been hurt.
            3. Sing, as if no one is listening.
            4. Live, as if it's last day in your life.
        """
        bottomTextLb.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        bottomTextLb.font = UIFont.systemFont(ofSize: 18)
        bottomTextLb.numberOfLines = 0
        bottomTextLb.lineBreakMode = .byWordWrapping
        bottomTextLb.textAlignment = NSTextAlignment.left
        bottomTextLb.backgroundColor = #colorLiteral(red: 0.8269042969, green: 1, blue: 0.8389485677, alpha: 1)
        view.addSubview(bottomTextLb)
        
        let logoBtn: UIButton = UIButton(type: .custom)
        logoBtn.frame = CGRect(x: 12.5, y: 57.5, width: 350, height: 40)
        logoBtn.setTitle("Love", for: .normal)
        logoBtn.setTitleColor(.red, for: .normal)
        logoBtn.setTitleColor(.blue, for: .selected)
        logoBtn.setTitleColor(.black, for: .highlighted)
        logoBtn.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        logoBtn.tag = 1
        logoBtn.addTarget(self, action: #selector(self.logoEventTouchupInside(_:)), for: .touchUpInside)
        view.addSubview(logoBtn)
        
        let logoBtn1: UIButton = UIButton(type: .custom)
        logoBtn1.frame = CGRect(x: 12.5, y: 102.5, width: 350, height: 40)
        logoBtn1.setTitle("Respect", for: .normal)
        logoBtn1.setTitleColor(.red, for: .normal)
        logoBtn1.setTitleColor(.blue, for: .selected)
        logoBtn1.setTitleColor(.black, for: .highlighted)
        logoBtn1.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        logoBtn1.tag = 2
        logoBtn1.addTarget(self, action: #selector(self.logoEventTouchupInside(_:)), for: .touchUpInside)
        view.addSubview(logoBtn1)
        
        let logoBtn2: UIButton = UIButton(type: .custom)
        logoBtn2.frame = CGRect(x: 12.5, y: 147.5, width: 350, height: 40)
        logoBtn2.setTitle("Help", for: .normal)
        logoBtn2.setTitleColor(.red, for: .normal)
        logoBtn2.setTitleColor(.blue, for: .selected)
        logoBtn2.setTitleColor(.black, for: .highlighted)
        logoBtn2.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        logoBtn2.tag = 3
        logoBtn2.addTarget(self, action: #selector(self.logoEventTouchupInside(_:)), for: .touchUpInside)
        view.addSubview(logoBtn2)
        
        resultBtn = UIButton(type: .custom)
        resultBtn.setTitle("Happy", for: .normal)
        resultBtn.setTitleColor(.blue, for: .normal)
        resultBtn.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        resultBtn.frame = CGRect(x: 12.5, y: 480, width: 350, height: 40)
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




