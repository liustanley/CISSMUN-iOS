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
        
        let url = URL(string:"https://docs.google.com/spreadsheets/d/1oL2QfSbLGm1bQ7Bm1quooJ63o1PzPTNOhNLcsGVMTdI/edit?ts=5a5a4fad#gid=1126656288")
        let request = URLRequest(url:url!)
        webview.load(request)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

