//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by Daulet on 20.11.2022.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func set(object: Emoji) {
        self.emojiLabel.text = object.emoji
        self.nameLabel.text = object.name
        self.descriptionLabel.text = object.description
    }
    
}
