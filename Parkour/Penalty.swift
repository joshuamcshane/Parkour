//
//  Penalty.swift
//  Parkour
//
//  Created by Joshua McShane on 11/13/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit

class Penalty {
    
    //MARK: Properties
    
    var userID: Int
    var citationID: Int
    var parkingSpaceID: Int
    
    var citationType: String
    
    var dueDate: Int
    var paidDate: Int
    var amount: Int
    var lateFee: Int
    
    var penaltyInfo: String
    
    //MARK: Initialization
    
    init(userID: Int, citationID: Int, parkingSpaceID: Int, citationType: String, dueDate: Int, paidDate: Int, amount: Int, lateFee: Int) {
        self.userID = userID
        self.citationID = citationID
        self.parkingSpaceID = parkingSpaceID
        
        self.citationType = citationType
        
        self.dueDate = dueDate
        self.paidDate = paidDate
        self.amount = amount
        self.lateFee = lateFee
        
        penaltyInfo = "Amount: $\(amount)" + " Due by: \(dueDate)" + "\n" + "Late Fee: \(lateFee)"
        
        
    }
    
}