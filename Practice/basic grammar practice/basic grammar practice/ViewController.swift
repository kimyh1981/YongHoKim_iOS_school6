//
//  ViewController.swift
//  basic grammar practice
//
//  Created by KimYong Ho on 2018. 1. 11..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 시작지점!
        /// This grammar is for testing.
        
        let yongho:Car = Car()
        yongho.name = "HyundaiG70"
        yongho.miles = 50000
        yongho.amortizationPermiles = 100
        yongho.newCarPrice = 50000000
        yongho.sell()

    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

