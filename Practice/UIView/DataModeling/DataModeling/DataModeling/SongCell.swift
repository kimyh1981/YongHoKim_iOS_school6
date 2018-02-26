//
//  SongCell.swift
//  DataModeling
//
//  Created by KimYong Ho on 2018. 2. 26..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {

    @IBOutlet var titleLb: UILabel!
    @IBOutlet var artistLb: UILabel!
    
    var songData: SongModel? {
        didSet {
            if let nowData = songData {
                self.titleLb.text = nowData.title
                self.artistLb.text = nowData.artist
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
