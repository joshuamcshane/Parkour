//
//  ContactTableViewCell.swift
//  Parkour
//
//  Created by Joshua McShane on 11/8/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    //MARK: Properties
    
    @IBOutlet weak var contactLabel: UILabel!
    @IBOutlet weak var contactInfo: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
