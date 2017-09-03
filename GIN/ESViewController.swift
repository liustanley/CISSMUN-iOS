//
//  ESViewController.swift
//  CISSMUN
//
//  Created by Edward Huang on 3/9/2017.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class ESViewController: UIViewController {
    
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var SegmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func acted(_ sender: Any) {
        
        if SegmentedControl.selectedSegmentIndex == 0{
            Image.image = UIImage(named: "ES 1");
        }
        if SegmentedControl.selectedSegmentIndex == 1{
            Image.image = UIImage(named: "ES 2");
        }
        
    }
    
    
}
