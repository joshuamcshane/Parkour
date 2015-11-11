//
//  NavigationViewController.swift
//  Parkour
//
//  Created by Joshua McShane on 11/10/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {
    
    //Create UIColor object
    let navColor = UIColor(red: 44/255, green: 170/255, blue: 54/255, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set navbar text color
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        //Set tint of nav bar elements
        self.navigationBar.tintColor = UIColor.whiteColor()
        //Set nav bar color
        self.navigationBar.barTintColor = navColor

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
