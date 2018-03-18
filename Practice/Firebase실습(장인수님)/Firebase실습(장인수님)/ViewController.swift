//
//  ViewController.swift
//  Firebase실습(장인수님)
//
//  Created by KimYong Ho on 2018. 3. 17..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    var ref: DatabaseReference!

    @IBOutlet weak var nameLb: UILabel!
    @IBOutlet weak var valueLb: UILabel!
    @IBOutlet weak var deleteItemLb: UILabel!
    
    @IBOutlet weak var nameTf: UITextField!
    @IBOutlet weak var valueTf: UITextField!
    @IBOutlet weak var deleteItemTf: UITextField!
    
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var restultTf: UITextField!
    
    @IBAction func insertBtn(_ sender: Any) {
        let itemsRef = ref.child((nameTf.text?.lowercased())!)
        itemsRef.setValue(valueTf.text)
        
        nameTf.text = ""
        valueTf.text = ""
    }
    @IBAction func deleteBtn(_ sender: Any) {
        ref.child(deleteItemTf.text!).removeValue(completionBlock: { (error, ref) in
            if error != nil {
                print("error \(String(describing: error))")
            }
            
            self.deleteItemTf.text = ""
        })
    }
    @IBAction func selectBtn(_ sender: Any) {
        ref.child(tf1.text!).observeSingleEvent(of: .value, with: { DataSnapshot in
    
            let value = DataSnapshot.value as? String
            let name = value
            
            print("Name : " + name!)
            
            self.tf2.text = value
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        
        ref.observe(.childAdded) { ( DataSnapshot) in
//            self.restultTf.text = DataSnapshot.key
            self.restultTf.text = DataSnapshot.value as? String
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

