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
	var score = 0
	@IBOutlet weak var scoreLabel: UILabel!
	var round = 0
	@IBOutlet weak var roundLabel: UILabel!

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
		round += 1
		targetValue = 1 + Int(arc4random_uniform(100)) // Calculate a new random number.
		currentValue = 50 // Reset the slider to the halfway position again.
		slider.value = Float(currentValue)
	}
	
	func startNewGame() {
		score = 0
		round = 0
		startNewRound()
	}
	
	func updateLabels() {
		targetLabel.text = String(targetValue)
		scoreLabel.text = String(score)
		roundLabel.text = String(round)
	}
	
	@IBAction func showAlert() {
		let difference = abs(targetValue - currentValue)
		var points = 100 - difference
		
		let title: String
		if difference == 0 {
			title = "Perfect!"
			points += 100
		} else if difference < 5 {
			title = "You almost had it!"
			if difference == 1 {
				points += 50
			}
		} else if difference < 10 {
			title = "Pretty good!"
		} else {
			title = "Not even close..."
		}
		score += points
		
		let message = "You scored \(points) points"
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		let action = UIAlertAction(title: "OK", style: .default, handler: {action in self.startNewRound(); self.updateLabels()})
		alert.addAction(action)
		present(alert, animated: true, completion: nil)
	}
	
	@IBAction func sliderMoved(_ slider:UISlider) {
		currentValue = lroundf(slider.value)
	}
	
	@IBAction func startOver(_ sender: UIButton) {
		startNewGame()
		updateLabels()
	}


}

