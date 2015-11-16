//
//  ParkingStatusViewController.swift
//  Parkour
//
//  Created by Nathan Nguyen on 10/28/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit

class ParkingStatusViewController: UIViewController {
  

    @IBOutlet weak var parkingSpotLabel: UILabel!
    @IBOutlet weak var timeLeftLabel: UILabel!
    
    
    var deckLetter :String!
    var floorNumber = 0;
    var parkingSpaceNumber = 0;
    var timeLeft = 0;
    
    var seconds = 5
    var minutes = 10
    var hours = 5
    
    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
//        timeClosesLabel.text = "Time: \(hours)"
      //  timeClosesLabel.text?.appendContentsOf(minutes)
        
//        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "subtractTime", userInfo: nil, repeats: true)
        
//        parkingSpotLabel.text = Deck.selectedDeck.name
//        floorNumberLabel.text?.appendContentsOf(String(floorNumber))
        
        // Do any additional setup after loading the view.
    }
    
//    func subtractTime() {
//        seconds--
//        timeClosesLabel.text = "Time: \(seconds)"
//      
//        if (seconds == 0) {
//            timer.invalidate()
//        }
//    }

    @IBAction func goBack(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
     MARK: - Navigation

     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
         Get the new view controller using segue.destinationViewController.
         Pass the selected object to the new view controller.
    }
    */

}
