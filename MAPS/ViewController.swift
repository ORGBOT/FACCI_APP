//
//  ViewController.swift
//  MAPS
//
//  Created by JULIO BARBERAN on 24/5/15.
//  Copyright (c) 2015 JULIO BARBERAN. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController,MKMapViewDelegate  {

    
    @IBOutlet var theMapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var latitude:CLLocationDegrees = 48.399193
        var longitude:CLLocationDegrees = 9.993341
        var latDelta:CLLocationDegrees = 0.01
        var longDelta:CLLocationDegrees = 0.01
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        var churchLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        var theRegion:MKCoordinateRegion =  MKCoordinateRegionMake(churchLocation, theSpan)
        self.theMapView.setRegion(theRegion, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

