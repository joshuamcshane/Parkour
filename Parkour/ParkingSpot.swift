//
//  ParkingSpot.swift
//  Parkour
//
//  Created by Nathan Nguyen on 11/15/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit

class ParkingSpot: NSObject {
    var name : String = ""
    var closingTime : Double = 0.0
    var parkingSpotsLeft = 100
    var totalParkingSpots = 0
    
    override init () {
        super.init()
    }
    
    init(name :String, hoursInfo: String, additionalParkingInfo: String, entranceInfo: String) {
        super.init()
        
    }
}
