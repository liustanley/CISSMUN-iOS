//
//  MUNPDFViewController.swift
//  CISSMUN
//
//  Created by Stanley Liu on 11/23/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit
import WebKit

class MUNPDFViewController: UIViewController {

    var stringPassed = ""
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pdfTitle = stringPassed
        
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

