//
//  MyButton.swift
//  UISample
//
//  Created by youngmin joo on 2018. 2. 1..
//  Copyright © 2018년 youngmin joo. All rights reserved.
//

import UIKit

class MyButton: UIButton {

    override func imageRect(forContentRect contentRect: CGRect) -> CGRect {
        return CGRect(x: 5, y: 5, width: 40, height: 40)
    }

//    override func titleRect(forContentRect contentRect: CGRect) -> CGRect {
//        return CGRect(x: 45, y: 5, width: 40, height: 40)
//    }
    
}
