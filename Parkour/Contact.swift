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
    var address: String
    var city: String
    var state: String
    var zip: Int
    var phone: Int
    var email: String
    
    //MARK: Initialization
    
    init?(name: String, address: String, city: String, state: String, zip: Int, phone: Int, email: String) {
        self.name = name
        self.address = address
        self.city = city
        self.state = state
        self.zip = zip
        self.phone = phone
        self.email = email
        
        if name.isEmpty {
        return nil
        }
    }
    
}