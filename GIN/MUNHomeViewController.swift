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
    
    @IBOutlet weak var KatherineUIView: DropShadow!
    @IBOutlet weak var KExpandUIView: DropShadow!
    @IBOutlet weak var kMoreText: UIButton!
    @IBOutlet weak var kMoreImage: UIButton!
    @IBOutlet weak var kHeader: UILabel!

    var isPaulson = false
    var isKatherine = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        PExpandUIView.isHidden = true
        pHeader.isHidden = true
        KExpandUIView.isHidden = true
        kHeader.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func expandPaulson(_ sender: Any) {
        pMoreText.isHidden = true
        pMoreImage.isHidden = true
        PExpandUIView.isHidden = false
        pHeader.isHidden = false
        KatherineUIView.frame.origin.y += 100
        PaulsonUIView.layoutIfNeeded()
        
        if isKatherine {
            KExpandUIView.frame.origin.y += 100
        }
        
        isPaulson = true
    }
    
    @IBAction func lessPaulson(_ sender: Any) {
        pMoreText.isHidden = false
        pMoreImage.isHidden = false
        PExpandUIView.isHidden = true
        pHeader.isHidden = true
        KatherineUIView.frame.origin.y -= 100
        PaulsonUIView.layoutIfNeeded()
        
        if isKatherine {
            KExpandUIView.frame.origin.y -= 100
        }
        
        isPaulson = false
    }
    
    @IBAction func expandKatherine(_ sender: Any) {
        kMoreText.isHidden = true
        kMoreImage.isHidden = true
        KExpandUIView.isHidden = false
        kHeader.isHidden = false
        
        if isPaulson {
            KExpandUIView.frame.origin.y += 100
        }
        
        KatherineUIView.layoutIfNeeded()
        
        isKatherine = true
    }
    
    @IBAction func lessKatherine(_ sender: Any) {
        kMoreText.isHidden = false
        kMoreImage.isHidden = false
        KExpandUIView.isHidden = true
        kHeader.isHidden = true
        
        if isPaulson {
            KExpandUIView.frame.origin.y -= 100
        }
        
        KatherineUIView.layoutIfNeeded()
        
        isKatherine = false
    }
    
}

