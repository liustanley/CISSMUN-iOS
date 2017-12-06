//
//  AcknowledgementsViewController.swift
//  CISSMUN
//
//  Created by Edward Huang on 6/12/2017.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class AcknowledgementsViewController: UIViewController {

   
    
    @IBAction func Bund(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://www.flickr.com/photos/bernd_thaller/16526151761/in/photolist-rbmRa4-Ymi81N-BJJT7x-YkeqME-Ywrdi1-XxDTDW-Mav45h-YsXKLe-UdokaS-phKJeM-zJg6h7-wn2HEu-L1gAnA-L9D3V7-fiiNkL-rNrJ8y-M1zr6E-JEPMKQ-y3cjmj-LarRju-zCMtno-VSmWRu-qL7npC-UdAdzq-XHYYTz-CoiwYi-Dz1RS7-Crhn8G-C9uN7v-xnUJC6-VsLUJG-P2QPxi-PaDGAv-PXqiP9-xcAqYV-NJsGGd-YF1LEA-Ep5X6V-ytZMg4-qnnNny-wn2BvW-Az91kf-B3msxm-uwXFTY-FHveM7-t4gTKU-smGCEY-pWWFqq-rwZyhY-rMkZAt")! as URL, options: [:], completionHandler: nil)
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
