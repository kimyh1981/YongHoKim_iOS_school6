//
//  MyCustomView.swift
//  UIViewSample2
//
//  Created by KimYong Ho on 2018. 2. 2..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class MyCustomView: UIView {
    
    var testLb: UILabel!
    var testLb1: UILabel!
    var customFontLb: UILabel!
    var imgView: UIImageView!
    var button: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        createUI()
        updateLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createUI() {
        self.imgView = UIImageView()
        self.imgView.image = UIImage(named: "love.jpeg")
        self.imgView.contentMode = UIViewContentMode.scaleToFill
        self.addSubview(imgView)
        
        self.testLb = UILabel()
        self.testLb.text = "첫번째"
        self.testLb.font = UIFont.systemFont(ofSize: 20)
        self.imgView.addSubview(self.testLb)
        
        self.button = UIButton()
        self.button.setTitle("누름", for: .selected)
        self.button.setTitle("누르고있음", for: .highlighted)
        self.button.setTitleColor(UIColor.black, for: .selected)
        self.button.setTitleColor(UIColor.blue, for: .highlighted)
        self.addSubview(button)
        
        
    }
    
    func updateLayout() {
        self.imgView.frame = CGRect(x: 10, y: 10, width: 150, height: 150)
        self.testLb.frame = CGRect(x: 10, y: 5, width: 150, height: 150)
        self.button.frame = CGRect(x: 10, y: 30, width: 150, height: 100)
    }
    
}
