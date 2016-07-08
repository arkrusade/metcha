//
//  FirstViewController.swift
//  metcha
//
//  Created by Clara Hwang on 7/6/16.
//  Copyright © 2016 orctech. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController, UITableViewDelegate {
	var locations: [String] = []
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	

}

// MARK: TableView Data Source

extension LocationViewController: UITableViewDataSource {
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return self.locations.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("locationCell") as! LocationCell
		cell.titleLabel.text = "Hello"
		return cell
	}
}

