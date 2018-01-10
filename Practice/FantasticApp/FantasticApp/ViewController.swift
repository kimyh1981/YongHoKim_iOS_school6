//
//  ViewController.swift
//  FantasticApp
//
//  Created by KimYong Ho on 2018. 1. 10..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lb:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Very first print!!")
        
        print("Second print!")
        
        print("Third print!")
        
        
        print("Fourth print!")
        
        lb.backgroundColor = .red
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

