//
//  MapsController.swift
//  CISSMUN
//
//  Created by Edward Huang on 31/7/2017.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class MapsController: UIViewController {
    

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var menuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        menuView.layer.shadowOpacity = 1;
        menuView.layer.shadowRadius = 6;
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    @IBAction func openMenu(_ sender: Any) {
        
        if(menuShowing) {
            leadingConstraint.constant = -200;
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded();
            })
        }
        else {
            leadingConstraint.constant = 0;
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded();
            })
            
            
        }
        menuShowing = !menuShowing;
    }
    
}
