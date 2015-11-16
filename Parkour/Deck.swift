//
//  Deck.swift
//  Parkour
//
//  Created by Nathan Nguyen on 11/11/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit

class Deck: parkingSpot {
    
    
    static var selectedDeck = Deck ()
    
    override init () {
        super.init()
    }
    
    override init(detailInfo: String) {
        super.init()
        self.detailInfo = detailInfo
    }
    
    override init(name :String, hoursInfo: String, accessibleParkingInfo: String, entranceInfo: String) {
        super.init()
        self.name = name
        self.hoursInfo = hoursInfo
        self.accessibleParkingInfo = accessibleParkingInfo
        entrancesInfo = entranceInfo
    }
    

    
    static var gDeck = Deck(detailInfo: "gDeck" + "Faculty/Staff/Visitor Parking:\n"
        + "Monday - Friday 6:30 am-10:00pm" + "Saturday 7:00 am – 9:30 pm (Collins St. Entrance only)\n"
        + "Sunday 11:00 am – 9:30 pm (Collins St. Entrance only)\n"
        + "G Deck is available to students as follows:" + "Mon – Fri after 4:00 pm\n"
        + "Saturday 7:00 am – 9:30 pm (Collins St. Entrance only)\n"
        + "Sunday 11:00 am – 9:30 pm (Collins St. Entrance only)" + "12 van accessible spots available on floor 1."
        + "Vehicle access from Collin St. with attendant on duty. Budget card access utilizes card touch pad\n" +
            "Vehicle access from Courtland St. with attendant on duty.  Budget card access utilizes card touch pad\n" +
            "Vehicle access from Central Ave. with attendant on duty. Budget card access utilizes card touch pad\n" +
            "Pedestrian access from the 2nd floor of Classroom South to 3rd floor of G Deck\n" +
        "Pedestrian access from 1st floor of Classroom South to 1st floor of G Deck through H Lot)\n")
    
    static var kDeck = Deck(detailInfo: "General Information\n K-Deck is located at Gilmer Street and a Budget Card or cash with a valid student parking permit may be used for access. K deck is available for student use.\n K-Deck has no reserved handicap accessible spots. There is no elevator to maneuver between floors.  For more information, contact Auxillary Services\n Hours\n 6:30am – 10:00pm. No overnight parking")
    
    static var mDeck = Deck(detailInfo: "General Information\n The M deck is located at Auditorium Place and is restricted to students parking with a\n semester permit, reserved staff/faculty, day care drop off and visitors to the\n university. Daily parking is available to students and visitors with either cash or budget card. M Deck Semester permits along with Lofts Deck (non-resident) permits are available for a fee per semester at the beginning of each semester to students on a first-come, first-served basis. Students who have registered in ParkingWeb can purchase M Deck or Lofts Deck (non-resident) semester permits on ParkingWeb at the beginining of each semester. Dates to be announced. Hours 6:30am-10:00pm.  No overnight parking.)")
    
    static var nDeck = Deck(detailInfo: "General Information\n N Deck is located at Gilmer Street.\n N Deck has no reserved handicap accessible spots. There is no elevator to maneuver between floors.\n Hours\n 6:30am – 10:00pm. No overnight parking.")
    static var sDeck = Deck(detailInfo: "General Information S Deck is located at Gilmer Street.\n S Deck has no reserved handicap accessible spots.\n There is no elevator to maneuver between floors. Hours 6:30am – 10:00pm.\n No overnight parking.")
    static var tDeck = Deck(detailInfo: "General Information: T Deck entrance is located at 43 Auburn Avenue.\n It is available to GSU students, faculty, staff and visitors. Disability parking is available.\n Hours of Operation: Student/Faculty/Staff/Visitor: Monday – Friday: 6:30 am-10:00 pm (Regular Hours)Saturday – Sunday, and Monday – Friday After Hours: Permit Access Only Entrances/Exits: Auburn Avenue: Monday – Friday (Regular Hours) Equitable Place: Saturday – Sunday and Monday – Friday After hours: Permit Access Only No overnight parking.")
    
    
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
