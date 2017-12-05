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
    
    var conference = ""
    
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
        UserDefaults.standard.set(true, forKey: "myConference")
        conference = "MUN"
        //passConference()
        let moreVC = storyboard?.instantiateViewController(withIdentifier: "MoreScreen") as! MoreScreenViewController
        moreVC.confPassed = conference
        
        let story = UIStoryboard(name: "MUN", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "MUN") as UIViewController
        
        self.present(controller, animated: true, completion: nil)
        
    }

    @IBAction func chooseGIN(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "myConference")
        conference = "GIN"
        
        
        let storyboard = UIStoryboard(name: "GIN", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "GIN") as UIViewController
        
        self.present(controller, animated: true, completion: nil)
        
    }
    
    func passConference() {
        let moreVC = storyboard?.instantiateViewController(withIdentifier: "MoreScreen") as! MoreScreenViewController
        moreVC.confPassed = conference
        print(conference)
        print(moreVC.confPassed)
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
