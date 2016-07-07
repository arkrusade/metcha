//
//  SVCCoreLocation.swift
//  metcha
//
//  Created by Clara Hwang on 7/7/16.
//  Copyright © 2016 orctech. All rights reserved.
//

import CoreLocation
extension SecondViewController: CLLocationManagerDelegate{
	
	func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
		
		
		if let location = self.locationManager.location
		{
			let locValue:CLLocationCoordinate2D = location.coordinate
			print("My Location = \(locValue.latitude ?? 0) \(locValue.longitude ?? 0)")
		}
		else {
			print("fail")
		}
	}
	func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
		print("hello")
	}
//	func locationManager(locationManager manager: CLLocationManager, didFailWithError error: NSError)
//	{
//		print(NSError)
//	}
}