//
//  MapsController.swift
//  CISSMUN
//
//  Created by Edward Huang on 31/7/2017.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class MapsController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    @IBAction func action(_ sender: Any) {
        
        //let url = URL(string: sender.accessibilityIdentifier!)!
        
        let alertController = UIAlertController(title: (sender as AnyObject).accessibilityLabel, message: (sender as AnyObject).accessibilityHint, preferredStyle: .actionSheet)
        
        let HSAction = UIAlertAction(title: "Upper Building", style: .default) { action in
            
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "one", sender: nil)
            }
            
            //UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        alertController.addAction(HSAction)
        
        let MSAction = UIAlertAction(title: "Intermediate Building", style: .default) { action in
            //UIPasteboard.general.string = sender.accessibilityLabel! + "\n" + sender.accessibilityHint!
            
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "two", sender: nil)
            }
        }
        alertController.addAction(MSAction)
        
        let ESAction = UIAlertAction(title: "Lower Building", style: .default) { action in
            //UIPasteboard.general.string = sender.accessibilityLabel! + "\n" + sender.accessibilityHint!
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "three", sender: nil)
            }
        }
        alertController.addAction(ESAction)
        
        let RCAction = UIAlertAction(title: "Rittmann Center", style: .default) { action in
            //UIPasteboard.general.string = sender.accessibilityLabel! + "\n" + sender.accessibilityHint!
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "four", sender: nil)
            }
        }
        alertController.addAction(RCAction)
        
        let PCAction = UIAlertAction(title: "Phoenix Center", style: .default) { action in
            //UIPasteboard.general.string = sender.accessibilityLabel! + "\n" + sender.accessibilityHint!
            
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "five", sender: nil)
            }
        }
        alertController.addAction(PCAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
            // ...
        }
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true) {
            // ...
        }
        
    }
    var menuShowing = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        menuView.layer.shadowOpacity = 1;
        menuView.layer.shadowRadius = 6;
       
        
    }
    
    @IBAction func openMenu(_ sender: Any) {
        
        if(menuShowing){
        leadingConstraint.constant = -210;
            UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
        }
        else {
        leadingConstraint.constant = 0;
        UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
        }
        
        menuShowing = !menuShowing;
        
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    
    
}
