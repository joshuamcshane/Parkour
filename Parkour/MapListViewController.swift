//
//  MapListViewController.swift
//  Parkour
//
//  Created by Joshua McShane on 11/10/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit

class MapListViewController: UIViewController {

    //UISegmentedControl and container views
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var mapView: UIView!
    @IBOutlet weak var listView: UIView!
    
    //Switches views based on UISegmentedControl selection
    @IBAction func indexChanged(sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            mapView.hidden = false
            listView.hidden = true
        case 1:
            mapView.hidden = true
            listView.hidden = false
        default:
            break;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.hidden = false
        listView.hidden = true

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
