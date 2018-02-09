//
//  ViewController.swift
//  UINavigator
//
//  Created by KimYong Ho on 2018. 2. 9..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "메인"
        self.title = "안녕하세요"
        
//        let icon = UIImageView(image: UIImage(named: "fenders-clipart-10.jpg"))
//        icon.frame = CGRect(x: 0, y: 0, width: 30, height: 20)

//        let item: UIBarButtonItem = UIBarButtonItem(image: nil, style: .plain, target: self, action: #selector(forward(_:)))
//        item.title = "앞으로가기"
        
        //left
        let leftItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.camera , target: self, action: #selector(leftAction(_:)))
        leftItem.title = "왼쪽"
        self.navigationItem.leftBarButtonItem = leftItem
        
        //title
        self.navigationItem.title = "메인페이지"
        
        //right
        let rightItem = UIBarButtonItem(title: "오른쪽", style: .done, target: self, action: #selector(rifghtAction(_:)))
        rightItem.title = "오른쪽"
        self.navigationItem.rightBarButtonItem = rightItem
        
    }
    
    @objc func leftAction (_ sender: UIBarButtonItem) {
        
    }
    @objc func rifghtAction (_ sender: UIBarButtonItem) {
        
    }
    


    

    @IBAction func NextAction(_ sender: Any) {
        //담을 VC 인스턴스
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "NextViewController")
        
        self.navigationController?.pushViewController(nextVC!, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

