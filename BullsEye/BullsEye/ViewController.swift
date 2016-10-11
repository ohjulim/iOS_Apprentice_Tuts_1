//
//  ViewController.swift
//  BullsEye
//
//  Created by Lim Oh Ju on 10/11/16.
//  Copyright © 2016 jude. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var currentValue: Int = 0
	@IBOutlet weak var slider: UISlider!
	var targetValue: Int = 0

	override func viewDidLoad() {
		super.viewDidLoad()
		currentValue = lroundf(slider.value)
		targetValue = 1 + Int(arc4random_uniform(100))
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction func showAlert() {
		let message = "The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)"
		let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .alert)
		let action = UIAlertAction(title: "OK", style: .default, handler: nil)
		alert.addAction(action)
		present(alert, animated: true, completion: nil)
	}
	
	@IBAction func sliderMoved(_ slider:UISlider) {
		currentValue = lroundf(slider.value)
	}


}

