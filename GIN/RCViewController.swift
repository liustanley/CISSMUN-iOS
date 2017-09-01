//
//  RCViewController.swift
//  CISSMUN
//
//  Created by Edward Huang on 1/9/2017.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//
import UIKit

class RCViewController: UIViewController {
    
    @IBOutlet weak var RC1: UIImageView!
    @IBOutlet weak var RCViewController: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func acted(_ sender: Any) {
        
        if RCViewController.selectedSegmentIndex == 0{
            RC1.image = UIImage(named: "RC 1");
        }
        if RCViewController.selectedSegmentIndex == 1{
            RC1.image = UIImage(named: "RC 2");
        }
        if RCViewController.selectedSegmentIndex == 2{
            RC1.image = UIImage(named: "RC 3");
        }
        if RCViewController.selectedSegmentIndex == 3{
            RC1.image = UIImage(named: "RC 4");
        }
        
        
    }
    
    
}
