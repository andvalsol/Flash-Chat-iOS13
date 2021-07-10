//
//  MessageCellTableViewCell.swift
//  Flash Chat iOS13
//
//  Created by Andrey Solera on 9/7/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class MessageCellTableViewCell: UITableViewCell {

    @IBOutlet weak var messageBubble: UIView!
    
    @IBOutlet weak var messageBody: UILabel!
    
    @IBOutlet weak var rightAvatar: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // This method is similar to viewDidLoad()
        messageBody.layer.cornerRadius = messageBubble.frame.size.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
