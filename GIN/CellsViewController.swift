//
//  CellsViewController.swift
//  CISSMUN
//
//  Created by Edward Huang on 5/11/2017.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class CellsViewController: UIViewController, UIScrollViewDelegate {


    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var textViewtwo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = images[(NSInteger)(roomies[row].floorNumber)]
        scroll.delegate = self
        textView.text = roomies[row].roomName
        textViewtwo.text = "Located on the " + text[ (NSInteger)(roomies[row].floorNumber)  ]
        //[@"7" intValue];
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    


}
