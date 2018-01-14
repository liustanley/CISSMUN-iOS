//
//  LiveUpdateViewController.swift
//  CISSMUN
//
//  Created by Tanya Lai on 1/14/18.
//  Copyright © 2018 Stanley Liu. All rights reserved.
//

import UIKit
import WebKit

class LiveUpdateViewController: UIViewController {
    
    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url1 = URL(string:"https://docs.google.com/spreadsheets/d/e/2PACX-1vQzmqAdyzfpoehjGQsvA2Xw1Y4tL1g4-2g80pgeQi-31tAU7oAVUnawwbm9c39vVPSZztutYlXSM2sb/pubhtml?gid=1126656288&single=true")
        let request = URLRequest(url:url1!)
        webview.load(request)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

