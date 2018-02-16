//
//  Tool1.swift
//  UIViewPracticeAll
//
//  Created by KimYong Ho on 2018. 2. 15..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class Tool1: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    func createRect() {
        rectLbl = UILabel()
        rectLbl.frame = CGRect()
        rectLbl.backgroundColor = UIColor.blue
        self.addSubview(rectLbl)
        
    }

}
