//
//  SecondViewController.swift
//  GIN
//
//  Created by Stanley Liu on 5/24/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class GINHomeViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var LavenderUIView: DropShadow!
    @IBOutlet weak var LExpandUIView: DropShadow!
    @IBOutlet weak var lMoreText: UIButton!
    @IBOutlet weak var lMoreImage: UIButton!
    @IBOutlet weak var lHeader: UILabel!
    @IBOutlet weak var lBody: UILabel!
    
    @IBOutlet weak var KarenUIView: DropShadow!
    @IBOutlet weak var KExpandUIView: DropShadow!
    @IBOutlet weak var kMoreText: UIButton!
    @IBOutlet weak var kMoreImage: UIButton!
    @IBOutlet weak var kHeader: UILabel!
    @IBOutlet weak var kBody: UILabel!
    
    var isLavender = false
    var isKaren = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LExpandUIView.alpha = 0.0
        lHeader.alpha = 0.0
        lBody.alpha = 0.0
        KExpandUIView.alpha = 0.0
        kHeader.alpha = 0.0
        kBody.alpha = 0.0
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func expandLav(_ sender: Any) {
        let expandHeight = LExpandUIView.frame.size.height
        
        lMoreText.fadeOut(0.2)
        lMoreImage.fadeOut(0.2)
        
        LExpandUIView.frame.origin.y -= 145
        UIView.animate(withDuration: 0.25, animations: {
            self.LExpandUIView.alpha = 1.0
            self.LExpandUIView.frame.origin.y += 145
            self.KarenUIView.frame.origin.y += expandHeight
            self.LavenderUIView.layoutIfNeeded()
            
            if self.isKaren {
                self.KExpandUIView.frame.origin.y += expandHeight
            }
            
        }, completion: { (finished: Bool) in
            self.lHeader.fadeIn(0.2, delay: 0.0)
            self.lBody.fadeIn(0.2, delay: 0.0)
        })
        
        isLavender = true
    }
    
    @IBAction func lessLav(_ sender: Any) {
        let expandHeight = LExpandUIView.frame.size.height
        
        lBody.fadeOut(0.2)
        lHeader.fadeOut(0.2, delay: 0.0, completion: { (finished: Bool) in
            UIView.animate(withDuration: 0.25, animations: {
                self.LExpandUIView.frame.origin.y -= 145
                self.KarenUIView.frame.origin.y -= expandHeight
                self.LavenderUIView.layoutIfNeeded()
                
                if self.isKaren {
                    self.KExpandUIView.frame.origin.y -= expandHeight
                }
                self.LExpandUIView.alpha = 0.0

            }, completion: { (finished: Bool) in
                self.LExpandUIView.frame.origin.y += 145
                self.lMoreText.fadeIn(0.2)
                self.lMoreImage.fadeIn(0.2)
            })
        })
        
        isLavender = false
    }
    
    @IBAction func expandKaren(_ sender: Any) {
        let expandHeight = LExpandUIView.frame.size.height
        
        kMoreText.fadeOut(0.2)
        kMoreImage.fadeOut(0.2)
        
        if !isLavender {
            KExpandUIView.frame.origin.y -= 145
        }
        
        UIView.animate(withDuration: 0.25, animations: {
            self.KExpandUIView.alpha = 1.0
            
            if self.isLavender {
                self.KExpandUIView.frame.origin.y += expandHeight
            } else {
                self.KExpandUIView.frame.origin.y += 145
            }
            self.KarenUIView.layoutIfNeeded()
        }, completion: { (finished: Bool) in
            self.kHeader.fadeIn(0.2, delay: 0.0)
            self.kBody.fadeIn(0.2, delay: 0.0)
        })
        
        isKaren = true
    }
    
    @IBAction func lessKaren(_ sender: Any) {
        let expandHeight = LExpandUIView.frame.size.height
        
        kBody.fadeOut(0.2)
        
        kHeader.fadeOut(0.2, delay: 0.0, completion: { (finished: Bool) in
            UIView.animate(withDuration: 0.25, animations: {
                self.KExpandUIView.frame.origin.y -= 145
                
                self.KExpandUIView.alpha = 0.0
                
            }, completion: { (finished: Bool) in
                self.KExpandUIView.frame.origin.y += 145
                self.kMoreText.fadeIn(0.2)
                self.kMoreImage.fadeIn(0.2)
                if self.isLavender {
                    self.KExpandUIView.frame.origin.y -= expandHeight
                }
                self.KarenUIView.layoutIfNeeded()
            })
        })
        
        isKaren = false
    }
    
}

