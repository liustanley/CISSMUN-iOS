//
//  MapsController.swift
//  CISSMUN
//
//  Created by Edward Huang on 31/7/2017.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class MapsController: UIViewController {
    

    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var menuShowing = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
  
       
        
    }
    
    @IBAction func openMenu(_ sender: Any) {
        
        if(menuShowing){
        leadingConstraint.constant = -200;
        }
        else {
        leadingConstraint.constant = 0;
        }
        
        menuShowing = !menuShowing;
        
    }

}
