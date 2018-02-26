//
//  NextViewController.swift
//  NotificationSample2
//
//  Created by KimYong Ho on 2018. 2. 25..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBAction func addBtn(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "KeyName"), object: tF.text)
        self.navigationController?.popViewController(animated: true)
    }
    @IBOutlet weak var tF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }


}
