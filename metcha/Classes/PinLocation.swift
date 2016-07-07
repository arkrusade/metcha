//
//  PinLocation.swift
//  metcha
//
//  Created by Clara Hwang on 7/6/16.
//  Copyright © 2016 orctech. All rights reserved.
//
import MapKit

class PinLocation: NSObject, MKAnnotation {
	let title: String?
	let subtitle: String?
	let coordinate: CLLocationCoordinate2D
 
	init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
		self.title = title
		self.subtitle = subtitle
		self.coordinate = coordinate
		
		super.init()
	}

}