//
//  NextViewController.swift
//  UINavigator
//
//  Created by KimYong Ho on 2018. 2. 9..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "환영합니다"

        // Do any additional setup after loading the view.
        
        
        let item: UIBarButtonItem = UIBarButtonItem(image: nil, style: .plain, target: self, action: #selector(back(_:)))
        item.title = "뒤로가기"
        self.navigationItem.leftBarButtonItem = item

        
    }
    @objc func back (_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
