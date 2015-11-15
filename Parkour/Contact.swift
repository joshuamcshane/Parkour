//
//  Contact.swift
//  Parkour
//
//  Created by Joshua McShane on 11/9/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit

class Contact {
    
    //MARK: Properties
    
    var name: String
    var street: String
    var city: String
    var state: String
    var zip: Int
    var phone: Int
    var email: String
    
    var fullInfo: String
    
//    var info: String
    
    //MARK: Initialization
    
//    init?(name: String, info: String) {
    
//        self.name = name
//        self.info = info
        
        
        init?(name: String, street: String, city: String, state: String, zip: Int, phone: Int, email: String) {
        self.name = name
        self.street = street
        self.city = city
        self.state = state
        self.zip = zip
        self.phone = phone
        self.email = email
        
        fullInfo = street + "\n" + city + ", " + state + " " + "\(zip)" + "\n" + "\(phone)" + "\n" + email
    
        if name.isEmpty {
        return nil
        }
    }
    
}