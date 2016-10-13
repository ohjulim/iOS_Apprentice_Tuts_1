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
	@IBOutlet weak var targetLabel: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		startNewRound()
		updateLabels()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func startNewRound() {
		targetValue = 1 + Int(arc4random_uniform(100)) // Calculate a new random number.
		currentValue = 50 // Reset the slider to the halfway position again.
		slider.value = Float(currentValue)
	}
	
	func updateLabels() {
		targetLabel.text = String(targetValue)
	}
	
	@IBAction func showAlert() {
		var difference = currentValue - targetValue
		if difference < 0 {
			difference *= -1
		}
		let message = "The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)" + "\nThe difference is: \(difference)"
		let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .alert)
		let action = UIAlertAction(title: "OK", style: .default, handler: nil)
		alert.addAction(action)
		present(alert, animated: true, completion: nil)
		startNewRound()
		updateLabels()
	}
	
	@IBAction func sliderMoved(_ slider:UISlider) {
		currentValue = lroundf(slider.value)
	}


}

