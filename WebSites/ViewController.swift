//
//  ViewController.swift
//  WebSites
//
//  Created by Кунгурцев Эдуард Сергеевич on 14.10.2022.
//

import UIKit
import WebKit
import SafariServices

class ViewController: UIViewController {

	@IBOutlet weak var webKitView: WKWebView!
	
	let urlString = "https://2gis.ru/novosibirsk"
	

	
	@IBAction func loadSiteInViewButtonPressed(_ sender: Any) {
		
		// Можно еще открыть ПДФ файл, код ниже
		
//		let path = Bundle.main.path(forResource: "presentation", ofType: "pdf")
//		let fileURL = URL(fileURLWithPath: path!)
//		webKitView.loadFileURL(fileURL, allowingReadAccessTo: fileURL)
	
		guard let myURL = URL(string: urlString) else { return }
		let myRequest = URLRequest(url: myURL)
		webKitView.load(myRequest)
		
	}
	@IBAction func loadSiteInSafariButtonPressed(_ sender: Any) {
		guard let url = URL(string: urlString) else { return }
		
		let config = SFSafariViewController.Configuration()
		let vc = SFSafariViewController(url: url, configuration: config)
		present(vc, animated: true)
		
	}
	
}

