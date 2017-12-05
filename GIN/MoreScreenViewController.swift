//
//  MoreViewController.swift
//  CISSMUN
//
//  Created by Stanley Liu on 7/9/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class MoreScreenViewController: UIViewController {
    
    var confPassed = "MUN"

    override func viewDidLoad() {
        super.viewDidLoad()
        print(confPassed)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openContact(_ sender: Any) {
        if confPassed == "MUN" {
            let controller = storyboard?.instantiateViewController(withIdentifier: "MUNContact")
            //let moreVC = storyboard?.instantiateViewController(withIdentifier: "More")
            //self.present(controller!, animated: true, completion: nil)
            //self.show(controller!, sender: moreVC)
            navigationController?.pushViewController(controller!, animated: true)
            print(confPassed)

            
        } else {
            let controller = storyboard?.instantiateViewController(withIdentifier: "GINContact")
            self.present(controller!, animated: true, completion: nil)
            print(confPassed)
        }
    }
    
    @IBAction func openPDF(_ sender: UIButton) {
        let pdfVC = storyboard?.instantiateViewController(withIdentifier: "pdfviewer") as! MUNPDFViewController
        pdfVC.stringPassed = sender.accessibilityIdentifier!
        navigationController?.pushViewController(pdfVC, animated: true)
        
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
