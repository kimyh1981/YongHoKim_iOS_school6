//
//  NextViewController.swift
//  DataSample
//
//  Created by KimYong Ho on 2018. 2. 12..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Create New Account"
        let item: UIBarButtonItem = UIBarButtonItem(image: nil, style: .plain, target: self, action: #selector(cancelAndBackToMain(_:)))
        item.title = "Cancel"
        self.navigationItem.leftBarButtonItem = item
    }
    @objc func cancelAndBackToMain (_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
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
