//
//  ViewController.swift
//  NotiSample
//
//  Created by KimYong Ho on 2018. 2. 23..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let notiCenter = NotificationCenter.default
        notiCenter.addObserver(self, selector: #selector(self.noticAction(_:)), name: Notification.Name(rawValue: "KeyName"), object: nil)
    }
    
    @objc func noticAction(_ noti:Notification) {
        let msg = noti.object as! String
        lb.text = msg
    }
    



}

