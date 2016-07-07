//
//  VCMapView.swift
//  metcha
//
//  Created by Clara Hwang on 7/6/16.
//  Copyright © 2016 orctech. All rights reserved.
//

import Foundation
import MapKit

extension SecondViewController: MKMapViewDelegate {
	
	func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
		if let annotation = annotation as? Artwork
		{
			let identifier = "pin"
			var view: MKPinAnnotationView
			if let dequeuedView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
				as? MKPinAnnotationView { // 2
				dequeuedView.annotation = annotation
				view = dequeuedView
			} else {
				// 3
				view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
				view.canShowCallout = true
				view.calloutOffset = CGPoint(x: -5, y: 5)
				//view.rightCalloutAccessoryView = UIButton.buttonWithType(.DetailDisclosure) as UIView
			}
			return view
		}
		return nil
	}
}