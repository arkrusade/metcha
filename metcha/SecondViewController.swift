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


	let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
	let regionRadius: CLLocationDistance = 1000
	
	
	override func viewDidLoad() {
		
		super.viewDidLoad()
//		centerMapOnLocation(initialLocation)
		
		let kingDavid = Artwork(title: "King David Statue", locationName: "Waikiki", discipline: "Sculpture", coordinate: CLLocationCoordinate2D(latitude: 21.283921, longitude: -157.831661))
		
		let myLocation = PinLocation(title: "My Location", subtitle: "Here you are", coordinate:
			CLLocationCoordinate2D(latitude: 37.785834, longitude: -122.406417))
		
		mapView.addAnnotation(kingDavid)
		mapView.addAnnotation(myLocation)
		
		mapView.delegate = self
		print(CLLocationManager.authorizationStatus().rawValue)
		self.locationManager.requestAlwaysAuthorization()
//		CLLocationManager.requestAlwaysAuthorization(locationManager)
		// For use in foreground
//		self.locationManager.requestWhenInUseAuthorization()
		print(CLLocationManager.authorizationStatus().rawValue)

		if CLLocationManager.locationServicesEnabled() {
			locationManager.delegate = self
			locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
			locationManager.startUpdatingLocation()
		}
		findUser()
		
	}
	func findUser()
	{
		self.locationManager.requestLocation()
		if let location = self.locationManager.location
		{
			let locValue:CLLocationCoordinate2D = location.coordinate
			print("My Location = \(locValue.latitude ?? 0) \(locValue.longitude ?? 0)")
		}
		else {
			print("fail")
		}
	}
	func centerMapOnLocation(location: CLLocation) {
		let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
		mapView.setRegion(coordinateRegion, animated: true)
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

