//
//  AttractionsViewController.swift
//  CISSMUN
//
//  Created by Stanley Liu on 7/23/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class AttractionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openDisney(_ sender: Any) {
        let url = URL(string: "http://maps.apple.com/?daddr=1+Infinite+Loop,+Cupertino,+CA")!
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
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
