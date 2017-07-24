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
    
    @IBAction func expandMenu(sender: UIButton) {
        let url = URL(string: sender.accessibilityIdentifier!)!

        let alertController = UIAlertController(title: sender.accessibilityLabel, message: sender.accessibilityHint, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
            // ...
        }
        alertController.addAction(cancelAction)
        
        let mapsAction = UIAlertAction(title: "Open in Maps", style: .default) { action in
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        alertController.addAction(mapsAction)
        
        let copyAction = UIAlertAction(title: "Copy to Clipboard", style: .default) { action in
            UIPasteboard.general.string = sender.restorationIdentifier
        }
        alertController.addAction(copyAction)
        
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
