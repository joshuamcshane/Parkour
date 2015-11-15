//
//  MapListTableViewController.swift
//  Parkour
//
//  Created by Nathan Nguyen on 11/9/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit

class MapListTableViewController: UITableViewController {

    var selectedRow = 0
    
    var mDeck = Deck()
    var nDeck = Deck()
    var kDeck = Deck()
    var sDeck = Deck()
    var gDeck = Deck()
   
    //var decks: [String] = ["mDeck", "nDeck", "kDeck", "sDeck", "gDeck"]
    
    var parkingDecks :[ParkingSpot] = []
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        freeParkingSpot.turnerFieldParking.name = "turnerFieldParking"
        parkingMeterSpot.gilmerStreet.name = "Gilmer Street"
        
        parkingDecks.append(Deck.mDeck)
        parkingDecks.append(Deck.nDeck)
        parkingDecks.append(Deck.kDeck)
        parkingDecks.append(Deck.sDeck)
        parkingDecks.append(Deck.gDeck)
        parkingDecks.append(freeParkingSpot.turnerFieldParking)
        parkingDecks.append(parkingMeterSpot.gilmerStreet)
      
        
        Deck.mDeck.name = "mDeck"
        Deck.nDeck.name = "nDeck"
        Deck.kDeck.name = "kDeck"
        Deck.sDeck.name = "sDeck"
        Deck.gDeck.name = "gDeck"
        
        
       
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return parkingDecks.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
//        let cell = tableView.dequeueReusableCellWithIdentifier("deckCell", forIndexPath: indexPath)
//        
//        cell.textLabel?.text = decks[indexPath.row]
//        
//        cell.backgroundColor = UIColor.greenColor()
        
        let cell2 = tableView.dequeueReusableCellWithIdentifier("deckCell", forIndexPath: indexPath) as! DeckTableViewCell
        
        //cell2.textLabel?.text = parkingDecks[indexPath.row].name
        

        
        cell2.deckNameLabel.text = parkingDecks[indexPath.row].name
        
        cell2.parkingSpotsLeftLabel.text?.appendContentsOf(String(parkingDecks[indexPath.row].parkingSpotsLeft))

        
        
        if (parkingDecks[indexPath.row].parkingSpotsLeft == 0)
        {
            cell2.backgroundColor = UIColor.redColor()
        } else {
            cell2.backgroundColor = UIColor.greenColor()
        }
        
        return cell2
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
//        let tabBarController = self.storyboard!.instantiateViewControllerWithIdentifier("tabBarController") as! UITabBarController
        

        
        parkingDecks[indexPath.row].parkingSpotsLeft--
        
        if let tabBarController = storyboard!.instantiateViewControllerWithIdentifier("tabBarController") as? UITabBarController {
            presentViewController(tabBarController, animated: true, completion: nil)
              //tabBarController.selectedIndex = 2 //switch tabs
        }
        
        
        
    }
    
    @IBAction func showDeckInfo(sender: AnyObject) {
        
        let mapTableViewController = self.storyboard!.instantiateViewControllerWithIdentifier("deckDetailsViewController")
        
        self.presentViewController(mapTableViewController, animated: true, completion: nil)
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

/*
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    //     Get the new view controller using segue.destinationViewController.
      //   Pass the selected object to the new view controller.
        
        let svc = segue.destinationViewController as! ParkingStatusViewController
        
        svc.deckLetter = parkingDecks[selectedRow].name
    }
*/
    

}
