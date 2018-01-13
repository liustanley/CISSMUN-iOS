//
//  SaturdayPDFViewController.swift
//  CISSMUN
//
//  Created by Tanya Lai on 1/13/18.
//  Copyright © 2018 Stanley Liu. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class TransportPDFViewController: UIViewController {
    
    var stringPassed = ""
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pdfTitle = "Travel Details"
        
        if let url = Bundle.main.url(forResource: pdfTitle, withExtension: "pdf") {
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest as URLRequest)
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}




