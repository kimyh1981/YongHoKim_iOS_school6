//
//  NextViewController1ViewController.swift
//  OverrideFuncText
//
//  Created by KimYong Ho on 2018. 2. 8..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class NextViewController1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        print("NewVC://", "deinit")

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
