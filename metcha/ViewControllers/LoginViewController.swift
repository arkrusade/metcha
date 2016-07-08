//
//  LoginViewController.swift
//  metcha
//
//  Created by Clara Hwang on 7/7/16.
//  Copyright © 2016 orctech. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
	@IBAction func unwindToLoginViewController(segue: UIStoryboardSegue) {
		
		
	}
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		// 1
		if let identifier = segue.identifier {
			// 2
			if identifier == "displaySignUp" {
				// 3
				print("Transitioning to the Display Note View Controller")
			}
	
		}
	}
}
