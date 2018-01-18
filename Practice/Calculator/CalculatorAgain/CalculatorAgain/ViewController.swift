//
//  ViewController.swift
//  CalculatorAgain
//
//  Created by KimYong Ho on 2018. 1. 15..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Label 변수 - storyboard에서 control 버튼을 누르면서 드레그로 위치에 옮긴다.
    @IBOutlet weak var firstNumDisplay: UILable!
    @IBOutlet weak var secondNumDisplay: UILable!
    @IBOutlet weak var resultNumDisplay: UILable!
    @IBOutlet weak var operationText: UILable!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

