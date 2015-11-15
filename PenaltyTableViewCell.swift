//
//  PenaltyTableViewCell.swift
//  Parkour
//
//  Created by Joshua McShane on 11/13/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit

class PenaltyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var penaltyLabel: UILabel!
    @IBOutlet weak var penaltyInfo: UITextView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
