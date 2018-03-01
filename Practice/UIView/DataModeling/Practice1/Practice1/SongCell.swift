//
//  SongCell.swift
//  Practice1
//
//  Created by KimYong Ho on 2018. 2. 27..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {
    
    @IBOutlet var titleLb: UILabel!
    @IBOutlet var artistLb: UILabel!
    
    var songData: SongModel? {
        didSet {
            if let nowDdata = songData {
                self.titleLb.text = nowDdata.songTitle
                self.artistLb.text = nowDdata.artist
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
