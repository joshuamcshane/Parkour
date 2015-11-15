//
//  PenaltiesTableViewController.swift
//  Parkour
//
//  Created by Joshua McShane on 11/11/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit

class PenaltiesTableViewController: UITableViewController {
    
    var penalties = [Penalty]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        loadSamplePenalties()
    }
    
    func loadSamplePenalties() {
        
        let penalty1 = Penalty(userID: 123, citationID: 1234, parkingSpaceID: 654, citationType: "Parking time expired.", dueDate: 12122015, paidDate: 12022015, amount: 45, lateFee: 100)
        
        let penalty2 = Penalty(userID: 456, citationID: 1235, parkingSpaceID: 467, citationType: "Car in lot after hours.", dueDate: 1212015, paidDate: 12012015, amount: 75, lateFee: 100)
        
        let penalty3 = Penalty(userID: 789, citationID: 1236, parkingSpaceID: 158, citationType: "Parking time expired.", dueDate: 12172015, paidDate: 12072015, amount: 30, lateFee: 100)
        
        penalties += [penalty1, penalty2, penalty3]
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
        return penalties.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "PenaltyTableViewCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! PenaltyTableViewCell

        let penalty = penalties[indexPath.row]
        
        cell.penaltyLabel.text = penalty.citationType
        cell.penaltyInfo.text = penalty.penaltyInfo

        return cell
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
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
