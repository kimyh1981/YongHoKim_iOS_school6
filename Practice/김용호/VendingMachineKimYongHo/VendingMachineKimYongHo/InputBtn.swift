//
//  InputBtn.swift
//  VendingMachineKimYongHo
//
//  Created by KimYong Ho on 2018. 2. 7..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class InputBtn: UIView {

    var moneyButton: UIButton!

//    convenience init(frame: CGRect, title: String) {
//        self.init(frame: frame)
//
//    }
    
    override init(frame: CGRect, title: String) {
        super.init(frame: frame)
        createBtn(title: title)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func createBtn(title: String) {
        moneyButton = UIButton()
        moneyButton.frame = CGRect(x: 10, y: 10, width: <#T##CGFloat#>, height: <#T##CGFloat#>)
        moneyButton.setTitle(title, for: .normal)
        moneyButton.setTitleColor(.black, for: .normal)
        moneyButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        moneyButton.layer.borderWidth = 1
        self.addSubview(moneyButton)



    }

}

