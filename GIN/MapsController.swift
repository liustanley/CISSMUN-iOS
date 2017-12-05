//
//  MapsController.swift
//  CISSMUN
//
//  Created by Edward Huang on 31/7/2017.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class MapsController: UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet weak var segments: UISegmentedControl!
    
    @IBOutlet weak var images: UIImageView!
    @IBAction func changedsegments(_ sender: UISegmentedControl) {
        
        if segments.selectedSegmentIndex == 0{
            images.image = UIImage(named: "HS B1");
        }
        if segments.selectedSegmentIndex == 1{
            images.image = UIImage(named: "HS 1");
        }
        if segments.selectedSegmentIndex == 2{
            images.image = UIImage(named: "HS 2");
        }
        if segments.selectedSegmentIndex == 3{
            images.image = UIImage(named: "HS 3");
        }
        if segments.selectedSegmentIndex == 4{
            images.image = UIImage(named: "HS 4");
        }
        if segments.selectedSegmentIndex == 5{
            images.image = UIImage(named: "HS 5");
        }
        if segments.selectedSegmentIndex == 6{
            images.image = UIImage(named: "HS 6");
        }
        
    }
    
    @IBAction func action(_ sender: Any) {
        
        //let url = URL(string: sender.accessibilityIdentifier!)!
        
        let alertController = UIAlertController(title: (sender as AnyObject).accessibilityLabel, message: (sender as AnyObject).accessibilityHint, preferredStyle: .actionSheet)
        
        let HSAction = UIAlertAction(title: "Upper Building", style: .default) { action in
            
           // DispatchQueue.main.async {
              //  self.performSegue(withIdentifier: "one", sender: nil)
           // }
                       self.segments.frame = CGRect(x: 50, y: 100, width: 300, height: 30)
           
            self.segments.insertSegment(withTitle: "first", at: 0, animated: false)
            self.segments.selectedSegmentIndex = 0
            //self.segments.addTarget(self, action: Selector(("segmentedControlAction:")), for: .valueChanged)
            
            
            
            //self.view.addSubview(segmentedControl)
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //scrollView.delegate = self
        
    }
    
   /*
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    */
    
    
}
