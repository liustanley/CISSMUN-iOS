//
//  WelcomeViewController.swift
//  CISSMUN
//
//  Created by Stanley Liu on 6/9/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

var conference = ""

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var CISSMUN: UIButton!
    @IBOutlet weak var GINASIA: UIButton!
        
    override func viewDidLoad() {
        
        //Adjust button appearance
        CISSMUN.titleLabel?.numberOfLines = 1
        CISSMUN.titleLabel?.adjustsFontSizeToFitWidth = true
        GINASIA.titleLabel?.numberOfLines = 1
        GINASIA.titleLabel?.adjustsFontSizeToFitWidth = true
        
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func chooseMUN(_ sender: Any) {
        conference = "MUN"
        UserDefaults.standard.set(true, forKey: "myConference")
        let story = UIStoryboard(name: "MUN", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "MUN") as UIViewController
        
        self.present(controller, animated: true, completion: nil)
        
    }

    @IBAction func chooseGIN(_ sender: Any) {
        conference = "GIN"
        UserDefaults.standard.set(false, forKey: "myConference")
        
        let storyboard = UIStoryboard(name: "GIN", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "GIN") as UIViewController
        
        self.present(controller, animated: true, completion: nil)
        
    }
    
}
