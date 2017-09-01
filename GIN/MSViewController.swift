//
//  MSViewController.swift
//  CISSMUN
//
//  Created by Edward Huang on 1/9/2017.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class MSViewController: UIViewController {
    
    
    @IBOutlet weak var MS1: UIImageView!
    @IBOutlet weak var MSViewController: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func acted(_ sender: Any) {
        
        if MSViewController.selectedSegmentIndex == 0{
            MS1.image = UIImage(named: "MS 1");
        }
        if MSViewController.selectedSegmentIndex == 1{
            MS1.image = UIImage(named: "MS 2");
        }
        
        
    }

    
}
