//
//  SecondViewController.swift
//  GIN
//
//  Created by Stanley Liu on 5/24/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class MUNHomeViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var PaulsonUIView: DropShadow!
    @IBOutlet weak var PExpandUIView: DropShadow!
    @IBOutlet weak var pMoreText: UIButton!
    @IBOutlet weak var pMoreImage: UIButton!
    @IBOutlet weak var pHeader: UILabel!
    @IBOutlet weak var pBody: UILabel!
    
    @IBOutlet weak var KatherineUIView: DropShadow!
    @IBOutlet weak var KExpandUIView: DropShadow!
    @IBOutlet weak var kMoreText: UIButton!
    @IBOutlet weak var kMoreImage: UIButton!
    @IBOutlet weak var kHeader: UILabel!
    @IBOutlet weak var kBody: UILabel!
    
    var isPaulson = false
    var isKatherine = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        PExpandUIView.alpha = 0.0
        pHeader.alpha = 0.0
        pBody.alpha = 0.0
        KExpandUIView.alpha = 0.0
        kHeader.alpha = 0.0
        kBody.alpha = 0.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func expandPaulson(_ sender: Any) {
        let expandHeight = PExpandUIView.frame.size.height
        
        pMoreText.fadeOut(0.2)
        pMoreImage.fadeOut(0.2)
        
        PExpandUIView.frame.origin.y -= 145
        UIView.animate(withDuration: 0.25, animations: {
            self.PExpandUIView.alpha = 1.0
            self.PExpandUIView.frame.origin.y += 145
            self.KatherineUIView.frame.origin.y += expandHeight
            self.PaulsonUIView.layoutIfNeeded()
            
            if self.isKatherine {
                self.KExpandUIView.frame.origin.y += expandHeight
            }
            
        }, completion: { (finished: Bool) in
            self.pHeader.fadeIn(0.2, delay: 0.0)
            self.pBody.fadeIn(0.2, delay: 0.0)
        })
        
        isPaulson = true
        
//        pMoreText.isHidden = true
//        pMoreImage.isHidden = true
//        PExpandUIView.isHidden = false
//
//        pHeader.isHidden = false
//        KatherineUIView.frame.origin.y += expandHeight
//        PaulsonUIView.layoutIfNeeded()
//
//        if isKatherine {
//            KExpandUIView.frame.origin.y += expandHeight
//        }
//
//        isPaulson = true
    }
    
    
    @IBAction func lessPaulson(_ sender: Any) {
        let expandHeight = PExpandUIView.frame.size.height
        
        pBody.fadeOut(0.2)
        pHeader.fadeOut(0.2, delay: 0.0, completion: { (finished: Bool) in
            UIView.animate(withDuration: 0.25, animations: {
                self.PExpandUIView.frame.origin.y -= 145
                self.KatherineUIView.frame.origin.y -= expandHeight
                self.PaulsonUIView.layoutIfNeeded()
                
                if self.isKatherine {
                    self.KExpandUIView.frame.origin.y -= expandHeight
                }
                self.PExpandUIView.alpha = 0.0
                
            }, completion: { (finished: Bool) in
                self.PExpandUIView.frame.origin.y += 145
                self.pMoreText.fadeIn(0.2)
                self.pMoreImage.fadeIn(0.2)
            })
        })
        
//        pMoreText.isHidden = false
//        pMoreImage.isHidden = false
//        PExpandUIView.isHidden = true
//        pHeader.isHidden = true
//        KatherineUIView.frame.origin.y -= expandHeight
//        PaulsonUIView.layoutIfNeeded()
//
//        if isKatherine {
//            KExpandUIView.frame.origin.y -= expandHeight
//        }
        
        isPaulson = false
    }
    
    @IBAction func expandKatherine(_ sender: Any) {
        let expandHeight = PExpandUIView.frame.size.height

        kMoreText.fadeOut(0.2)
        kMoreImage.fadeOut(0.2)
        
        if !isPaulson {
            KExpandUIView.frame.origin.y -= 145
        }
        
        UIView.animate(withDuration: 0.25, animations: {
            self.KExpandUIView.alpha = 1.0
            
            if self.isPaulson {
                self.KExpandUIView.frame.origin.y += expandHeight
            } else {
                self.KExpandUIView.frame.origin.y += 145
            }
            self.KatherineUIView.layoutIfNeeded()
        }, completion: { (finished: Bool) in
            self.kHeader.fadeIn(0.2, delay: 0.0)
            self.kBody.fadeIn(0.2, delay: 0.0)
        })
        
        isKatherine = true
    }
    
    @IBAction func lessKatherine(_ sender: Any) {
        let expandHeight = PExpandUIView.frame.size.height

        kBody.fadeOut(0.2)
        
        kHeader.fadeOut(0.2, delay: 0.0, completion: { (finished: Bool) in
            UIView.animate(withDuration: 0.25, animations: {
                self.KExpandUIView.frame.origin.y -= 145
                
                self.KExpandUIView.alpha = 0.0
                
            }, completion: { (finished: Bool) in
                self.KExpandUIView.frame.origin.y += 145
                self.kMoreText.fadeIn(0.2)
                self.kMoreImage.fadeIn(0.2)
                if self.isPaulson {
                    self.KExpandUIView.frame.origin.y -= expandHeight
                }
                self.KatherineUIView.layoutIfNeeded()
            })
        })
        
        isKatherine = false
    }
    
}

