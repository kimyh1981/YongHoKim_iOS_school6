//
//  ChecklistItem.swift
//  Checklists
//
//  Created by KimYong Ho on 02/07/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
