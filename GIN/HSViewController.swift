//
//  HSViewController.swift
//  CISSMUN
//
//  Created by Edward Huang on 25/8/2017.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class HSViewController: UIViewController {
    
    
    @IBOutlet weak var HSB1: UIImageView!
    @IBOutlet weak var Controller: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  
    
    @IBAction func ChangePhoto(_ sender: Any) {
        
        if Controller.selectedSegmentIndex == 0{
            HSB1.image = UIImage(named: "HS B1");
        }
        if Controller.selectedSegmentIndex == 1{
            HSB1.image = UIImage(named: "HS 1");
        }
        if Controller.selectedSegmentIndex == 2{
            HSB1.image = UIImage(named: "HS 2");
        }
        if Controller.selectedSegmentIndex == 3{
            HSB1.image = UIImage(named: "HS 3");
        }
        if Controller.selectedSegmentIndex == 4{
            HSB1.image = UIImage(named: "HS 4");
        }
        if Controller.selectedSegmentIndex == 5{
            HSB1.image = UIImage(named: "HS 5");
        }
        if Controller.selectedSegmentIndex == 6{
            HSB1.image = UIImage(named: "HS 6");
        }
        
    }
  
}
