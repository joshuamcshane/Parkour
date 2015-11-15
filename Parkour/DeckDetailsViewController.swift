//
//  DeckDetailsViewController.swift
//  Parkour
//
//  Created by Nathan Nguyen on 11/11/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit

class DeckDetailsViewController: UIViewController {

    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var entrancesLabel: UILabel!
    @IBOutlet weak var additionalParkingSpotsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hoursLabel.text = Deck.selectedDeck.hoursInfo
        entrancesLabel.text = Deck.selectedDeck.entrancesInfo
        additionalParkingSpotsLabel.text = Deck.selectedDeck.additionalParkingInfo
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
