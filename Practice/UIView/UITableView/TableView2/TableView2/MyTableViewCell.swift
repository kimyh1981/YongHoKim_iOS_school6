//
//  MyTableViewCell.swift
//  TableView2
//
//  Created by KimYong Ho on 2018. 2. 22..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var sunny1: UIImageView!
    
//    @IBOutlet weak var rainny1: UIImageView!
//    
//    @IBOutlet weak var cloudy1: UIImageView!
//    
//    @IBOutlet weak var snowy1: UIImageView!
    
    @IBOutlet weak var time1: UILabel!
    
    @IBOutlet weak var city1: UILabel!
    
    @IBOutlet weak var temp1: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
