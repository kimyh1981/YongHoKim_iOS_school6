//
//  MainCell.swift
//  CheerUpBabyProject
//
//  Created by KimYong Ho on 2018. 2. 28..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class MainCell: UITableViewCell {
    

    @IBOutlet weak var profile: UIImageView!
    @IBOutlet weak var nameLb: UILabel!
    @IBOutlet weak var statusLb: UILabel!
    
    var cellData: UserModel? {
        willSet {
            if let data = newValue {
                nameLb.text = data.nickName
                profile.image = UIImage(named: data.profileImgUrl)
                statusLb.text = data.statusDescription
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        imgView.layer.cornerRadius = imgView.frame.size.width/2
//        imgView.clipsToBounds = true
//        imgView.layer.borderColor = UI
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
