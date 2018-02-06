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
        customView0.textLb.text = "첫번째"
        customView0.tag = 0
        self.view.addSubview(customView0)
        
        customView1 = MyCustomView(frame: CGRect(x: 200, y: 0, width: 150, height: 150))
        customView1.textLb.text = "두번째"
        customView1.tag = 1
        self.view.addSubview(customView1)
        
        customView2 = MyCustomView(frame: CGRect(x: 0, y: 200, width: 150, height: 150))
        customView2.textLb.text = "세번째"
        customView2.tag = 2
        self.view.addSubview(customView2)
        
        customView3 = MyCustomView(frame: CGRect(x: 200, y: 200, width: 150, height: 150))
        customView3.textLb.text = "네번째"
        customView3.tag = 3
        self.view.addSubview(customView3)
        
        
        
    }
    
    func buttonAction(_ texLb: UILabel) {
 
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
//Switch문을 사용하여 "눌렀습니다" 메세지 띄울까요? 아님 text.setTitle도 있나요? isSelected....print....






