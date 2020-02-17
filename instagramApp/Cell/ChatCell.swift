//
//  ChatCell.swift
//  instagramApp
//
//  Created by datamatics on 05/02/20.
//  Copyright © 2020 datamatics. All rights reserved.
//

import UIKit

class ChatCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var userImage: UIImageView!

    @IBOutlet weak var userMessageLabel: UILabel!

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
