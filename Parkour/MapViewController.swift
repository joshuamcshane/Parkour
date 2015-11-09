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

    @IBOutlet weak var switchMaps: UISegmentedControl!
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
     
        
       mapView.addAnnotations([gDeckAnnotation, nDeckAnnotation, kDeckAnnotation])
        
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
