//
//  MapViewController.swift
//  Parkour
//
//  Created by Nathan Nguyen on 10/7/15.
//  Copyright © 2015 Nathan Nguyen. All rights reserved.
//

import UIKit
import MapKit
import AddressBook

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapSegment: UISegmentedControl!
    
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        mapView.delegate = self

        let initialLocation = CLLocation (latitude: 33.751468, longitude: -84.385005)
        
        let mDeckLocation = CLLocationCoordinate2D (
            latitude: 33.753245, longitude: -84.384051
        )
        
//        let sDeckLocation = CLLocationCoordinate2D (
//            latitude: 33.753245, longitude: -84.384051
//        )
        
        let kDeckLocation = CLLocationCoordinate2D (
            latitude: 33.751135, longitude: -84.384109
        )
        
        let nDeckLocation = CLLocationCoordinate2D (
            latitude: 33.751272, longitude: -84.384513
        )
        
        let gDeckLocation = CLLocationCoordinate2D (
            latitude: 33.752843, longitude: -84.385961
        )
        
        centerMapOnLocation(initialLocation)
        
        let mDeckAnnotation = MKPointAnnotation()
        mDeckAnnotation.coordinate = mDeckLocation
        mDeckAnnotation.title = "mDeck"

        
        let nDeckAnnotation = MKPointAnnotation()
        nDeckAnnotation.coordinate = nDeckLocation
        nDeckAnnotation.title = "nDeck"
        
        
//        let sDeckAnnotation = MKPointAnnotation()
//        mDeckAnnotation.coordinate = sDeckLocation
//        mDeckAnnotation.title = "sDeck"
//        mapView.addAnnotation(sDeckAnnotation)
        
        let kDeckAnnotation = MKPointAnnotation()
        kDeckAnnotation.coordinate = kDeckLocation
        kDeckAnnotation.title = "kDeck"
       
        
        let gDeckAnnotation = MKPointAnnotation()
        gDeckAnnotation.coordinate = gDeckLocation
        gDeckAnnotation.title = "gDeck"
     
        
       mapView.addAnnotations([gDeckAnnotation, nDeckAnnotation, kDeckAnnotation, mDeckAnnotation])
        
//        var placemark = MKPlacemark (coordinate: mDeckLocation, addressDictionary: nil)
//        var mapItem = MKMapItem (placemark: placemark)
//        mapItem.name = "house"
//        let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
//        mapItem.openInMapsWithLaunchOptions(launchOptions)
    }
    
    let regionRadius: CLLocationDistance = 1000
    
    func centerMapOnLocation (location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate , regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    
    @IBAction func switchMaps(sender: AnyObject)
    {
       switch mapSegment.selectedSegmentIndex
       {
       case 0:
        break
      
        
       case 1:

        let mapListTableViewController = self.storyboard!.instantiateViewControllerWithIdentifier("MapListTableViewController")
        
         tabBarController!.presentViewController(mapListTableViewController, animated: true, completion: nil)
        
       default:
        break;
        
       }
    
    }
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        // 1
        let identifier = "Capital"
        
        // 2
       // if annotation.isKindOfClass(Capital.self) {
            // 3
            var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
            
            if annotationView == nil {
                //4
                annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView!.canShowCallout = true
                
                // 5
//                let btn = UIButton(type: .DetailDisclosure)
//                annotationView!.rightCalloutAccessoryView = btn
            } else {
                // 6
                annotationView!.annotation = annotation
            }
            
            return annotationView
    //    }
        
        // 7
      //  return nil
    }
    
    
    
    func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
    
        let mDeckLocation = CLLocationCoordinate2D (
            latitude: 33.753245, longitude: -84.384051
        )
        
        let launchOptions  = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
       
        let geoCoder = CLGeocoder()
        let newLocation = CLLocation(latitude: 40.74835, longitude: -73.984911)
        
//        let address  =
//            [kABPersonAddressStreetKey: "6055 Lawrencevilley Hwy",
//            kABPersonAddressCityKey: "New York",
//            kABPersonAddressStateKey: "NY",
//            kABPersonAddressZIPKey: "10118",
//            kABPersonAddressCountryCodeKey: "US"]
       
        var placemark = MKPlacemark(coordinate: mDeckLocation , addressDictionary: nil)
        var mapItem = MKMapItem(placemark: placemark)
        mapItem.openInMapsWithLaunchOptions(launchOptions)
        
        let ac = UIAlertController(title: "test", message: "test", preferredStyle: .Alert)
        ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        presentViewController(ac, animated: true, completion: nil)
        
//        let deckDetailsViewController = self.storyboard!.instantiateViewControllerWithIdentifier("deckDetailsViewController")
//        
//        tabBarController!.presentViewController(deckDetailsViewController, animated: true, completion: nil)
        
        
    }
    
//    func mapItem() -> MKMapItem
//    {
//        let addressDictionary = [String(kABPersonAddressStreetKey): "gDeck"]
//        let testCoordinate = CLLocationCoordinate2D (
//            latitude: 33.751135, longitude: -84.384109
//        )
//        let placemark = MKPlacemark (coordinate: testCoordinate, addressDictionary: addressDictionary)
//        
//        let mapItem = MKMapItem (placemark: placemark)
//        mapItem.name = title
//        
//        return mapItem
//    }
//
//    
//    func mapView (mapView: MKMapView!, annotationView view: MKAnnotationView!,
//        calloutAccessoryControlTapped control: UIControl) {
//            let location = view.annotation
//            let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
//            mapView.map
//    }

//    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
//        <#code#>
//    }

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
