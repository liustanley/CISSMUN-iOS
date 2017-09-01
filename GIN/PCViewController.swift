//
//  PCViewController.swift
//  CISSMUN
//
//  Created by Edward Huang on 1/9/2017.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class PCViewController: UIViewController {
    
    @IBOutlet weak var PC1: UIImageView!
    @IBOutlet weak var PCViewController: UISegmentedControl!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func acted(_ sender: Any) {
        
        if PCViewController.selectedSegmentIndex == 0{
            PC1.image = UIImage(named: "PC 1");
        }
        if PCViewController.selectedSegmentIndex == 1{
            PC1.image = UIImage(named: "PC 2");
        }
        
    }
    
    
}
