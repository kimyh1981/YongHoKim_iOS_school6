//
//  ViewController.swift
//  DataSample
//
//  Created by KimYong Ho on 2018. 2. 9..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

//아래 let은 상수 선언만 한 거임.
let key = "UserNameList"
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var idTF: UITextField!
    @IBOutlet weak var pwTF: UITextField!

    
    @IBAction func login(_ sender: Any) {
        if var list = UserDefaults.standard.array(forKey: key) as? [String] {
            list.append(idTF.text!)
            UserDefaults.standard.set(list, forKey: key)
        } else {
            let newNameList = [idTF.text!]
            UserDefaults.standard.set(newNameList, forKey: key)
        }
        
    }
    
    @IBAction func idCheck(_ sender: Any) {
        if var list = UserDefaults.standard.array(forKey: key) as? [String] {
            for name in list {
                if idTF.text == name {
                    print("찾았다.")
                    return
                } else {
                    print("NO")
                }
            }

        }
    }
    
    @IBAction func newSign(_ sender: Any) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

