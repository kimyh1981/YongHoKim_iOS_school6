//
//  NextViewController.swift
//  UITableViewSample2
//
//  Created by KimYong Ho on 2018. 2. 22..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    

    var tTitle: String?
    
    @IBOutlet weak var detailInformation: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailInformation.text = tTitle

    

        
    }

}
