//
//  WelcomeViewController.swift
//  CISSMUN
//
//  Created by Stanley Liu on 6/9/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var CISSMUN: UIButton!
    @IBOutlet weak var GINASIA: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        CISSMUN.titleLabel?.numberOfLines = 0
        CISSMUN.titleLabel?.adjustsFontSizeToFitWidth = true
        GINASIA.titleLabel?.numberOfLines = 0
        GINASIA.titleLabel?.adjustsFontSizeToFitWidth = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
