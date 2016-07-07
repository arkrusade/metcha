//
//  SecondViewController.swift
//  metcha
//
//  Created by Clara Hwang on 7/6/16.
//  Copyright © 2016 orctech. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import Foundation

class SecondViewController: UIViewController {

	@IBOutlet weak var mapView: MKMapView!
	let locationManager = CLLocationManager()

	var locations = [CLLocation]()

	var userLocation: CLLocation = CLLocation()
	let regionRadius: CLLocationDistance = 1000
	
	
	override func viewDidLoad() {
		
		super.viewDidLoad()
		
		mapView.delegate = self
		self.locationManager.requestAlwaysAuthorization()

		if CLLocationManager.locationServicesEnabled() {
			locationManager.delegate = self
			locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
			locationManager.startUpdatingLocation()
		}
		if let coord = findUser()
		{
			//add device type
			let myLocation = PinLocation(title: "My Location", subtitle: "Here you are", coordinate: coord)
			mapView.addAnnotation(myLocation)
		}
	}
	
	func findUser() -> CLLocationCoordinate2D?
	{
		self.locationManager.requestLocation()
		if let location = self.locationManager.location
		{
			let locValue:CLLocationCoordinate2D = location.coordinate
			print("My Location = \(locValue.latitude ?? 0) \(locValue.longitude ?? 0)")
			return locValue
		}
		else {
			print("fail")
			return nil
		}
	}
	func centerMapOnLocation(location: CLLocation) {
		let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
		mapView.setRegion(coordinateRegion, animated: true)
	}
	func centerMapOn2DLocation(location: CLLocationCoordinate2D) {
		let coordinateRegion = MKCoordinateRegionMakeWithDistance(location, regionRadius * 2.0, regionRadius * 2.0)
		mapView.setRegion(coordinateRegion, animated: true)
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

