//
//  parkingSpotTableViewCell.swift
//  Parkour
//
//  Created by Nathan Nguyen on 11/15/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit

class parkingSpotTableViewCell: UITableViewCell {

    @IBOutlet weak var parkingSpotNameLabel: UILabel!
    @IBOutlet weak var parkingSpotsLeft: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
