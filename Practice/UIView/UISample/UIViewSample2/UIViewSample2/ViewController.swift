//
//  ViewController.swift
//  UIViewSample2
//
//  Created by KimYong Ho on 2018. 2. 2..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var customView0: MyCustomView!
    var customView1: MyCustomView!
    var customView2: MyCustomView!
    var customView3: MyCustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        self.view.addSubview(customView)
        
        customView0 = MyCustomView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        customView0.testLb.text = "첫번째"
        self.view.addSubview(customView0)
        
        customView1 = MyCustomView(frame: CGRect(x: 200, y: 0, width: 150, height: 150))
        customView1.testLb.text = "두번째"
        self.view.addSubview(customView1)
        
        customView2 = MyCustomView(frame: CGRect(x: 0, y: 200, width: 150, height: 150))
        customView2.testLb.text = "세번째"
        self.view.addSubview(customView2)
        
        customView3 = MyCustomView(frame: CGRect(x: 200, y: 200, width: 150, height: 150))
        customView3.testLb.text = "네번째"
        self.view.addSubview(customView3)
        
        
    }
    
    @objc func buttonAction(_ sender: UIButton) {
        print("누름")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
//Switch문을 사용하여 "눌렀습니다" 메세지 띄울까요? 아님 text.setTitle도 있나요? isSelected....print....
