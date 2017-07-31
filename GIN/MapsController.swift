//
//  MapsController.swift
//  CISSMUN
//
//  Created by Edward Huang on 31/7/2017.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class MapsController: UIViewController {
    
    @IBOutlet weak var menuConstraint: NSLayoutConstraint!
    
    var menuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func menuOpen(_ sender: Any) {
        
        if(menuShowing) {
            menuConstraint.constant = -145
            } else {
            menuConstraint.constant = 0
        }
        
        menuShowing = !menuShowing
    }
    
}
