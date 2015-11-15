//
//  Deck.swift
//  Parkour
//
//  Created by Nathan Nguyen on 11/11/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit

class Deck: ParkingSpot {

    var floorNumber = 0
    var hoursInfo = ""
    var additionalParkingInfo = ""
    var entrancesInfo = ""
    
    override init () {
        super.init()
    }
    
    override init(name :String, hoursInfo: String, additionalParkingInfo: String, entranceInfo: String) {
       super.init()
        self.name = name
        self.hoursInfo = hoursInfo
        self.additionalParkingInfo = additionalParkingInfo
        entrancesInfo = entranceInfo
        
    }
    
    static var selectedDeck = Deck()
    
    static var gDeck = Deck(name: "gDeck", hoursInfo: "Faculty/Staff/Visitor Parking:\n"
        + "Monday - Friday 6:30 am-10:00pm" + "Saturday 7:00 am – 9:30 pm (Collins St. Entrance only)\n"
        + "Sunday 11:00 am – 9:30 pm (Collins St. Entrance only)\n"
        + "G Deck is available to students as follows:" + "Mon – Fri after 4:00 pm\n"
        + "Saturday 7:00 am – 9:30 pm (Collins St. Entrance only)\n"
        + "Sunday 11:00 am – 9:30 pm (Collins St. Entrance only)",
        additionalParkingInfo: "12 van accessible spots available on floor 1.",
        entranceInfo: "Vehicle access from Collin St. with attendant on duty. Budget card access utilizes card touch pad\n" +
         "Vehicle access from Courtland St. with attendant on duty.  Budget card access utilizes card touch pad\n" +
         "Vehicle access from Central Ave. with attendant on duty. Budget card access utilizes card touch pad\n" +
         "Pedestrian access from the 2nd floor of Classroom South to 3rd floor of G Deck\n" +
         "Pedestrian access from 1st floor of Classroom South to 1st floor of G Deck through H Lot)\n")
    static var kDeck = Deck(name: "kDeck", hoursInfo: "this is gDeck", additionalParkingInfo: "test", entranceInfo: "test")
    static var mDeck = Deck(name: "mDeck", hoursInfo: "this is gDeck", additionalParkingInfo: "test", entranceInfo: "test")
    static var nDeck = Deck(name: "nDeck", hoursInfo: "this is gDeck", additionalParkingInfo: "test", entranceInfo: "test")
    static var sDeck = Deck(name: "sDeck", hoursInfo: "this is gDeck", additionalParkingInfo: "test", entranceInfo: "test")
    static var tDeck = Deck(name: "tDeck", hoursInfo: "this is gDeck", additionalParkingInfo: "test", entranceInfo: "test")
    

    struct parkingDecks {
        static var gDeck = Deck()
        static var kDeck = Deck()
        static var mDeck = Deck()
        static var nDeck = Deck()
        static var sDeck = Deck()
        static var tDeck = Deck()
        
    }
    
    class sharingManager {
        var welcomeMessage:String = "Default Message"
        static let sharedInstance = sharingManager()
    }
    

    
}
