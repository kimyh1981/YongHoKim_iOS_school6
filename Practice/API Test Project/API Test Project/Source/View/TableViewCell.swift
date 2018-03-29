//
//  TableViewCell.swift
//  API Test Project
//
//  Created by KimYong Ho on 29/03/2018.
//  Copyright © 2018 KimYong Ho. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLable: UILabel!
    @IBOutlet weak var contentImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with post: Post) {
        self.titleLabel.text = post.title
        self.contentLable.text = post.content
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
