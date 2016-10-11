//
//  ViewController.swift
//  BullsEye
//
//  Created by Lim Oh Ju on 10/11/16.
//  Copyright © 2016 jude. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction func showAlert() {
		let alert = UIAlertController(title: "Hello, World", message: "This is my first App!", preferredStyle: .alert)
		let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
		alert.addAction(action)
		present(alert, animated: true, completion: nil)
	}
	
	@IBAction func sliderMoved(_ slider:UISlider) {
		print("The value of the slider is now: \(slider.value)")
	}


}

