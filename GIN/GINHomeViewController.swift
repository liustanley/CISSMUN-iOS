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
    
    @IBOutlet weak var KarenUIView: DropShadow!
    @IBOutlet weak var KExpandUIView: DropShadow!
    @IBOutlet weak var kMoreText: UIButton!
    @IBOutlet weak var kMoreImage: UIButton!
    @IBOutlet weak var kHeader: UILabel!
    
    var isLavender = false
    var isKaren = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LExpandUIView.isHidden = true
        lHeader.isHidden = true
        KExpandUIView.isHidden = true
        kHeader.isHidden = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func expandLav(_ sender: Any) {
        let expandHeight = LExpandUIView.frame.size.height
        
        lMoreText.isHidden = true
        lMoreImage.isHidden = true
        LExpandUIView.isHidden = false
        
        lHeader.isHidden = false
        KarenUIView.frame.origin.y += expandHeight
        LavenderUIView.layoutIfNeeded()
        
        if isKaren {
            KExpandUIView.frame.origin.y += expandHeight
        }
        
        isLavender = true
    }
    
    @IBAction func lessLav(_ sender: Any) {
        let expandHeight = LExpandUIView.frame.size.height
        
        lMoreText.isHidden = false
        lMoreImage.isHidden = false
        LExpandUIView.isHidden = true
        lHeader.isHidden = true
        KarenUIView.frame.origin.y -= expandHeight
        LavenderUIView.layoutIfNeeded()
        
        if isKaren {
            KExpandUIView.frame.origin.y -= expandHeight
        }
        
        isLavender = false
    }
    
    @IBAction func expandKaren(_ sender: Any) {
        let expandHeight = LExpandUIView.frame.size.height
        
        kMoreText.isHidden = true
        kMoreImage.isHidden = true
        KExpandUIView.isHidden = false
        kHeader.isHidden = false
        
        if isLavender {
            KExpandUIView.frame.origin.y += expandHeight
        }
        
        KarenUIView.layoutIfNeeded()
        
        isKaren = true
    }
    
    @IBAction func lessKaren(_ sender: Any) {
        let expandHeight = LExpandUIView.frame.size.height
        
        kMoreText.isHidden = false
        kMoreImage.isHidden = false
        KExpandUIView.isHidden = true
        kHeader.isHidden = true
        
        if isLavender {
            KExpandUIView.frame.origin.y -= expandHeight
        }
        
        KarenUIView.layoutIfNeeded()
        
        isKaren = false
    }
    
}

