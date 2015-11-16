//
//  ParkingSpot.swift
//  Parkour
//
//  Created by Nathan Nguyen on 11/15/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit

class parkingSpot: NSObject {
    
    var name : String = ""
    var closingTime : Double = 0.0
    var parkingSpotsLeft = 100
    var totalParkingSpots = 0
    var hoursInfo = ""
    var floorNumber = 0
    var accessibleParkingInfo = ""
    var entrancesInfo = ""
    var detailInfo = ""
    
    
    static var selectedParkingSpot = parkingSpot()
    
    override init() {
        super.init()
    }
    
    init(name: String) {
           super.init()
        self.name = name
    }
    
    init(name :String, hoursInfo: String, accessibleParkingInfo: String, entranceInfo: String) {
        super.init()
        
    }
    
    init(detailInfo: String) {
           super.init()
        self.detailInfo = detailInfo
    }
    
    init(name: String, detailInfo: String) {
           super.init()
        self.name = name
        self.detailInfo = detailInfo
    }
    
}
