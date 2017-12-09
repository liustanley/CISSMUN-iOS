//
//  SecondViewController.swift
//  GIN
//
//  Created by Stanley Liu on 5/24/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class MUNHomeViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    let appVersion = 1.0
    var updatedVersion: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scrollView.delegate = self
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        checkVersion()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getVersion() {
        if let url = URL(string: "https://phantomore.com/appVersion.txt") {
            do {
                updatedVersion = Double(try String(contentsOf: url, encoding: .utf8))!
                    print(updatedVersion)
            } catch {updatedVersion = appVersion}
            
        } else {
            print("URL was bad")
        }
        
    }
    
    func checkVersion() {
        getVersion()
        
        if (appVersion != updatedVersion)
        {
            let alert = UIAlertController(title: "New Version Available", message: "There is a newer version available for download! Please update the app by visiting the Apple Store.", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Update", style: UIAlertActionStyle.default, handler: { alertAction in
                UIApplication.shared.open(NSURL(string : "https://itunes.apple.com/app/cheapo-casino-free-casino/id637522371?ls=1&mt=8")! as URL, options: [:], completionHandler: nil)
                alert.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let offsetY = scrollView.contentOffset.y
        
        if offsetY < 0
        {
            imageView.frame.size.height = -offsetY
        }
        else
        {
            imageView.frame.size.height = imageView.frame.size.height
        }
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let newOrigin = CGPoint(x: 0, y: 0)
        
        scrollView.contentOffset = newOrigin
        scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}

