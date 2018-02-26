//
//  ViewController.swift
//  LoginProject
//
//  Created by KimYong Ho on 2018. 2. 20..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var list: [[String:Any]] = []
    var model: UserDataModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var modelList:[UserDataModel] = []
        
        for dic in list {
            if let data = UserDataModel(dic: dic) {
                modelList.append(data)
            }
        }
        model = UserDataModel(dic: list[0])
    }



}

