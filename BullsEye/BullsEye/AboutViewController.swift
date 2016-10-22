//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Lim Oh Ju on 10/22/16.
//  Copyright © 2016 jude. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
	
	@IBOutlet weak var webView: UIWebView!
	
	@IBAction func close() {
		dismiss(animated: true, completion: nil)
	}

    override func viewDidLoad() {
        super.viewDidLoad()
			
			// This loads the local HTML file into the web view.
			if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
				if let htmlData = try? Data(contentsOf: url) {
					let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
					webView.load(htmlData, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
				}
			}

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
