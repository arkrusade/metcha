//
//  FirstViewController.swift
//  metcha
//
//  Created by Clara Hwang on 7/6/16.
//  Copyright © 2016 orctech. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
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

extension FirstViewController: UITableViewDataSource {
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return self.locations.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("UserCell") as! FriendSearchTableViewCell
		
		
		
		if let followingUsers = followingUsers {
			// check if current user is already following displayed user
			// change button appereance based on result
			cell.canFollow = !followingUsers.contains(user)
		}
		
		cell.delegate = self
		
		return cell
	}
}