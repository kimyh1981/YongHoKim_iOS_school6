//
//  NextViewController.swift
//  NotiSample
//
//  Created by KimYong Ho on 2018. 2. 23..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    

    @IBAction func btn1(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "KeyName"), object: tf.text)
        self.navigationController?.popViewController(animated: true)
    }
        
    @IBOutlet weak var tf: UITextField!

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        }

    

}
