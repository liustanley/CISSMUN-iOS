//
//  DiningViewController.swift
//  CISSMUN
//
//  Created by Stanley Liu on 7/29/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class DiningViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func expandMenu(sender: UIButton) {
        let mapURL = URL(string: sender.accessibilityIdentifier!)!
        let webURL = URL(string: sender.accessibilityHint!)!
        
        let alertController = UIAlertController(title: sender.accessibilityLabel, message: nil, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
            // ...
        }
        alertController.addAction(cancelAction)
        
        let mapsAction = UIAlertAction(title: "Open in Maps", style: .default) { action in
            UIApplication.shared.open(mapURL, options: [:], completionHandler: nil)
        }
        alertController.addAction(mapsAction)
        
        let copyAction = UIAlertAction(title: "Copy Address to Clipboard", style: .default) { action in
            UIPasteboard.general.string = sender.accessibilityLabel!
        }
        alertController.addAction(copyAction)
        
        let webAction = UIAlertAction(title: "Go to Website", style: .default) { action in
            UIApplication.shared.open(webURL, options: [:], completionHandler: nil)
        }
        alertController.addAction(webAction)
        
        self.present(alertController, animated: true) {
            // ...
        }
        
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
